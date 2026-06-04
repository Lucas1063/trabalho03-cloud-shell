#!/bin/bash
listar_processos() {
    echo "Processos ativos que mais gastam memória:"
    ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 10
}
buscar_processo() {
    ps aux | grep -i "$1" | grep -v "grep"
}
matar_processo() {
    if [ -z "$1" ]; then
        echo "[Erro] Informe um PID para encerrar."
        return
    fi
    kill -9 "$1" && echo "Processo $1 encerrado."
}
case "$1" in
    listar) listar_processos ;;
    buscar) buscar_processo "$2" ;;
    matar) matar_processo "$2" ;;
    *) echo "Uso: $0 {listar|buscar NOME|matar PID}" ;;
esac