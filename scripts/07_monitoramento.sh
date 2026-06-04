#!/bin/bash
DATA=$(date '+%Y-%m-%d %H:%M:%S')
LOG="/logs/monitoramento.log"

USO_MEM=$(free | grep Mem | awk '{print ($3/$2) * 100.0}')
USO_DISCO=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "==== MONITORAMENTO UNIFY - $DATA ====" | tee -a $LOG

if [ $(echo "$USO_MEM > 80" | bc) -ne 0 ]; then
    echo "[ALERTA] Memória alta: ${USO_MEM}%" | tee -a $LOG
else
    echo "[OK] Memória normal: ${USO_MEM}%" | tee -a $LOG
fi

if [ "$USO_DISCO" -ge 80 ]; then
    echo "[ALERTA] Disco cheio: ${USO_DISCO}%" | tee -a $LOG
else
    echo "[OK] Disco normal: ${USO_DISCO}%" | tee -a $LOG
fi

if service apache2 status | grep -q "is running"; then
    echo "[OK] Apache em execução" | tee -a $LOG
else
    echo "[ALERTA] Apache PARADO!" | tee -a $LOG
fi