#!/bin/bash

# themas 

setterm -foreground green
clear

dialog --infobox "loading..." 0 0 ; sleep 2

menuitem=$(dialog --backtitle "NAHFER HACKING" --stdout --title "THEMAS DE MENUS" \
    --menu "" 15 51 6 \
    1 "THEMA ROJO" \
    2 "THEMA VERDE" \
    3 "THEMA AMARILLO" \
    4 "THEMA AZUL" \
    5 "THEMA CELESTE" \
    6 "salir")

chosen=$?

case $chosen in
    0)
        echo $(clear)
        if [[ $menuitem == 1 ]]; then
            cd Central-Nahfer
            cd a
            mv .red .dialogrc
            mv .dialogrc /$HOME
            
        elif [[ $menuitem == 2 ]]; then
            cd Central-Nahfer
            cd a
            mv .green .dialogrc
            mv .dialogrc /$HOME
            
        elif [[ $menuitem == 3 ]]; then
            echo cd Central-Nahfer
            cd a
            mv .amarillo .dialogrc
            mv .dialogrc /$HOME
            
        elif [[ $menuitem == 4 ]]; then
            echo cd Central-Nahfer
            cd a
            mv .blue .dialogrc
            mv .dialogrc /$HOME
            
        elif [[ $menuitem == 5 ]]; then
            cd Central-Nahfer
            cd a
            mv .cyan .dialogrc
            mv .dialogrc /$HOME
        else
            echo "exit"
            exit 0
        fi
        ;;
    1)
        echo "cancelado .."
        ;;
    255)
        echo ""
        echo $(clear);exit 1
        ;;

esac