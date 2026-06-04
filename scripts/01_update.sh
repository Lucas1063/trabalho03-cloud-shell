#!/bin/bash
atualizar_sistema() {
    echo "[Unify DevOps] Iniciando atualização do sistema..."
    if apt-get update && apt-get upgrade -y; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Sucesso: Sistema atualizado." >> /logs/update.log
        echo "[Unify DevOps] Sistema atualizado com sucesso!"
    else
        echo "[Unify DevOps] Falha ao atualizar."
    fi
}
atualizar_sistema