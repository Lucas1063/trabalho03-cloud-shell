#!/bin/bash
ARQUIVO="/logs/relatorio.txt"

gerar_relatorio() {
    echo "=== RELATÓRIO UNIFY - $(date '+%Y-%m-%d %H:%M:%S') ===" > $ARQUIVO
    echo "Tema: Streaming de Música" >> $ARQUIVO
    echo "--- ESPAÇO EM DISCO ---" >> $ARQUIVO
    df -h / >> $ARQUIVO
    echo "--- BACKUPS GERADOS ---" >> $ARQUIVO
    ls -lh /backups >> $ARQUIVO
    echo "--- SITE PUBLICADO ---" >> $ARQUIVO
    ls -l /var/www/html >> $ARQUIVO
    
    echo "[Unify DevOps] Relatório gerado em $ARQUIVO"
    cat $ARQUIVO
}
gerar_relatorio