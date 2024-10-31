
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
    sudo apt update && sudo apt upgrade -y
    echo "Actualizaciones instaladas."
}
function limpiar_temporales {
    echo "Eliminando archivos temporales y caché..."
    sudo apt clean
    rm -rf ~/.cache/*
    echo "Archivos temporales eliminados."
}
while true; do
    echo -e "\n=== Menú de Automatización ==="
    echo "1. Generar informe de uso del sistema"
    echo "2. Actualizar el sistema"
    echo "3. Limpiar archivos temporales"
    echo "4. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) generar_informe ;;
        2) actualizar_sistema ;;
        3) limpiar_temporales ;;
        4) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción no válida. Intente de nuevo." ;;
    esac
done

