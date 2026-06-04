#!/bin/bash
instalar_apache() {
    echo "[Unify DevOps] Instalando Apache e FFmpeg..."
    apt-get install -y apache2 ffmpeg
    service apache2 start
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Apache e FFmpeg instalados." >> /logs/apache.log
}
verificar_apache() {
    if service apache2 status | grep -q "is running"; then
        echo "[Unify DevOps] Serviço Apache está RODANDO."
    else
        echo "[Unify DevOps] Serviço Apache PARADO."
    fi
}
versao_apache() {
    apache2 -v | head -n 1
}
instalar_apache
verificar_apache
versao_apache