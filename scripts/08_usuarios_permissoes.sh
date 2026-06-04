#!/bin/bash
configurar_seguranca() {
    GRUPO="unify_ops"
    USUARIO="unify_dj"
    DIRETORIO="/app/unify"

    echo "[Unify DevOps] Criando grupo $GRUPO e usuário $USUARIO..."
    groupadd -f $GRUPO
    id -u $USUARIO > /dev/null 2>&1 || useradd -m -g $GRUPO -s /bin/bash $USUARIO

    echo "[Unify DevOps] Ajustando permissões..."
    chown -R $USUARIO:$GRUPO $DIRETORIO
    chmod -R 750 $DIRETORIO

    echo "Permissões aplicadas com sucesso."
}
configurar_seguranca