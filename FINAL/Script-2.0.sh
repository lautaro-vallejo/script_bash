#!/bin/bash

function generar_informe {
    echo "Generando informe de uso del sistema..."
    {
        echo "Uso de CPU:"
        top -bn1 | grep "Cpu(s)"
        echo ""
        echo "Uso de Memoria:"
        free -h
        echo ""
        echo "Uso de Disco:"
        df -h
    } > informe_sistema.log
    echo "Informe guardado en informe_sistema.log"
}

function actualizar_sistema {
    echo "Verificando actualizaciones..."
    sudo apt update
    echo "Instalando actualizaciones disponibles..."
    sudo apt list --upgradable
    read -p "Desea proceder con la actualizacion? (s/n): " confirmacion
    if [[ "$confirmacion" == "s" ]]; then
        sudo apt upgrade -y
        echo "Actualizaciones instaladas."
    else
        echo "Actualizacion cancelada."
    fi
}

function limpiar_temporales {
    echo "Espacio en disco antes de la limpieza:"
    df -h
    echo "\nEliminando archivos temporales y cache..."
    sudo apt clean
    rm -rf ~/.cache/*
    echo "Archivos temporales eliminados."
    echo "\nEspacio en disco despues de la limpieza:"
    df -h
}

while true; do
    echo -e "\n=== Menu de Automatizacion ==="
    echo "1. Generar informe de uso del sistema"
    echo "2. Actualizar el sistema"
    echo "3. Limpiar archivos temporales"
    echo "4. Salir"
    read -p "Seleccione una opcion: " opcion

    case $opcion in
        1) generar_informe ;;
        2) actualizar_sistema ;;
        3) limpiar_temporales ;;
        4) echo "Saliendo..."; exit 0 ;;
        *) echo "Opcion no valida. Intente de nuevo." ;;
    esac
done