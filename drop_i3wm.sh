#!/bin/bash

# Script para sair do modo gráfico no i3-wm

# Confirmação do usuário
read -p "Derrubar interface? [s/n]: " confirmation

if [[ $confirmation == "s" || $confirmation == "S" ]]; then
    # Encerra a sessão do i3-wm
    i3-msg exit
    
    # Alternativamente, se i3-msg exit não funcionar, pode usar um dos comandos abaixo:
    #pkill X
    #systemctl stop display-manager

    echo "Retornando ao console."
else
    echo "Operação cancelada."
fi
