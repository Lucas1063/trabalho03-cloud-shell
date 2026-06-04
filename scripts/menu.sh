#!/bin/bash
while true; do
    echo "==================================="
    echo " Projeto Unify - Streaming Cloud"
    echo "==================================="
    echo " 1 - Atualizar sistema"
    echo " 2 - Instalar Apache e Mídias"
    echo " 3 - Criar pastas do projeto"
    echo " 4 - Realizar backup"
    echo " 5 - Fazer deploy do site"
    echo " 6 - Ver processos"
    echo " 7 - Monitorar sistema"
    echo " 8 - Configurar usuários"
    echo " 9 - Gerar relatório final"
    echo " 0 - Sair"
    echo "==================================="
    read -p "Digite uma opção: " opcao

    case $opcao in
        1) /scripts/01_update.sh ;;
        2) /scripts/02_apache.sh ;;
        3) /scripts/03_estrutura.sh ;;
        4) /scripts/04_backup.sh ;;
        5) /scripts/05_deploy.sh ;;
        6) /scripts/06_processos.sh listar ;;
        7) /scripts/07_monitoramento.sh ;;
        8) /scripts/08_usuarios_permissoes.sh ;;
        9) /scripts/09_relatorio.sh ;;
        0) echo "Saindo..."; exit 0 ;;
        *) echo "Opção inválida!" ;;
    esac
    echo ""
    read -p "Aperte ENTER para voltar ao menu..."
done