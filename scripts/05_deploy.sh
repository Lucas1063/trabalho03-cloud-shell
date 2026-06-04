#!/bin/bash
ORIGEM="/source"
DESTINO="/var/www/html"

fazer_deploy() {
    echo "[Unify DevOps] Publicando o site..."
    rm -rf $DESTINO/*
    cp -r $ORIGEM/* $DESTINO/
    
    echo "[Unify DevOps] Deploy realizado! Arquivos na pasta web:"
    ls -la $DESTINO
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Deploy web ok." >> /logs/deploy.log
}
fazer_deploy