#!/bin/bash
# Función para generar informe de uso de CPU, memoria y disco
function generar_informe {     echo "Generando informe de uso del sistema...";     {         echo "Uso de CPU:";         top -bn1 | grep "Cpu(s)";         echo "";         echo "Uso de Memoria:";         free -h;         echo "";         echo "Uso de Disco:";         df -h;     } > informe_sistema.log;     echo "Informe guardado en informe_sistema.log"; }
# Función para actualizar el sistema
function actualizar_sistema {     echo "Verificando actualizaciones...";     sudo apt update && sudo apt upgrade -y;     echo "Actualizaciones instaladas."; }
# Función para eliminar archivos temporales
function limpiar_temporales {     echo "Eliminando archivos temporales y caché...";     sudo apt clean;     rm -rf ~/.cache/*;     echo "Archivos temporales eliminados."; }
# Menú interactivo
while true; do     echo -e "\n=== Menú de Automatización ===";     echo "1. Generar informe de uso del sistema";     echo "2. Actualizar el sistema";     echo "3. Limpiar archivos temporales";     echo "4. Salir";     read -p "Seleccione una opción: " opcion;      case $opcion in         1) generar_informe ;;         2) actualizar_sistema ;;         3) limpiar_temporales ;;         4) echo "Saliendo..."; exit 0 ;;         *) echo "Opción no válida. Intente de nuevo." ;;     esac; done
./script.sh
chmod +x script.sh
ls -l script.sh
pwd
pwd srcipt.sh
../script.sh
nano script.sh
./script.s
./script.sh
sudo nano script.sh
chmod +x script.sh
sudo ./script.sh
clear
./script.sh
1
2
4
clear
./script.sh
cat informe_sistema.log
clear
# Función para eliminar archivos temporales
function limpiar_temporales {     echo "Verificando archivos temporales y caché...";     espacio_ocupado=$(du -sh ~/.cache | cut -f1)  # Espacio ocupado antes de la limpieza
    echo "Espacio ocupado por archivos temporales: $espacio_ocupado";      echo "Eliminando archivos temporales y caché...";     sudo apt clean;     rm -rf ~/.cache/*;          espacio_liberado=$(du -sh ~/.cache 2>/dev/null | cut -f1)  # Espacio ocupado después
    echo "Archivos temporales eliminados. Espacio liberado: $espacio_liberado"; }
function limpiar_temporales {     echo "Verificando archivos temporales y caché...";     espacio_ocupado=$(du -sh ~/.cache | cut -f1)  # Espacio ocupado antes de la limpieza
    echo "Espacio ocupado por archivos temporales: $espacio_ocupado";      echo "Eliminando archivos temporales y caché...";     sudo apt clean;     rm -rf ~/.cache/*;          espacio_liberado=$(du -sh ~/.cache 2>/dev/null | cut -f1)  # Espacio ocupado después
    echo "Archivos temporales eliminados. Espacio liberado: $espacio_liberado"; }
#!/bin/bash
# Función para eliminar archivos temporales
function limpiar_temporales {     echo "Verificando archivos temporales y caché...";     espacio_ocupado=$(du -sh ~/.cache | cut -f1)  # Espacio ocupado antes de la limpieza
    echo "Espacio ocupado por archivos temporales: $espacio_ocupado";      echo "Eliminando archivos temporales y caché...";     sudo apt clean;     rm -rf ~/.cache/*;          espacio_liberado=$(du -sh ~/.cache 2>/dev/null | cut -f1)  # Espacio ocupado después
    echo "Archivos temporales eliminados. Espacio liberado: $espacio_liberado"; }
limpiar_temporales
clear
nano ./script.sh
sudo apt update
sudo apt install git
clear
sudo apt install git
sudo --configure -a
sudo apt install git
sudo --configure -a
clear
dpkg -l
