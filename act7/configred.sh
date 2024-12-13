#!/bin/bash

# Función para mostrar el menú de opciones
mostrar_menu() {
    echo "Selecciona una opción:"
    echo "1. ip: Mostrar la dirección IP"
    echo "2. ping: Realizar un ping a una dirección"
    echo "3. conexión: Comprobar conexión a internet"
    echo "4. salir: Salir del script"
    read -p "Opción: " opcion
}

# Función para mostrar un mensaje de error
mostrar_error() {
    echo "Opción inválida. Por favor, elige una opción válida."
}

# Bucle principal del script
while true; do
    mostrar_menu

    case $opcion in
        1)
            echo "Tu dirección IP es:"
            ip addr show eth0 | grep 'inet ' | awk '{ print $2 }' | cut -d/ -f1
            ;;
        2)
            read -p "Ingrese la dirección a la que hacer ping: " direccion
            ping -c 4 $direccion
            ;;
        3)
            echo "Comprobando conexión a internet..."
            ping -c 4 8.8.8.8
            ;;
        4)
            echo "Saliendo del script..."
            exit 0
            ;;
        *)
            mostrar_error
            ;;
    esac
done
