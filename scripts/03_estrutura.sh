#!/bin/bash
BASE_DIR="/app/unify"

criar_estrutura() {
    echo "[Unify DevOps] Criando pastas do Streaming..."
    mkdir -p $BASE_DIR/{musicas,podcasts,playlists,logs,backups}
    
    echo "Metadados" > $BASE_DIR/musicas/info.txt
    echo "Metadados" > $BASE_DIR/podcasts/info.txt
    
    echo "[Unify DevOps] Estrutura criada. Veja:"
    ls -la $BASE_DIR
}
criar_estrutura