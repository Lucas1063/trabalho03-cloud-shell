#!/bin/bash
ORIGEM="/app/unify"
DESTINO="/backups"
ARQUIVO_BKP="backup_unify_$(date '+%Y-%m-%d_%H-%M').tar.gz"

fazer_backup() {
    echo "[Unify DevOps] Iniciando backup..."
    tar -czf "$DESTINO/$ARQUIVO_BKP" -C "$ORIGEM" .
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup gerado." >> /logs/backup.log
    echo "[Unify DevOps] Backup criado em: $DESTINO/$ARQUIVO_BKP"
}
fazer_backup