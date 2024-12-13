#!/bin/bash

while true; do
    read -p "Introduce una opción (llistes, usuarios, información, conexión, o deja vacío para salir): " opcion

    # Si el usuario no introduce nada, salimos del bucle
    if [[ -z "$opcion" ]]; then
        echo "Saliendo del script..."
        break
    fi

    case "$opcion" in
        llistes)
            ls
            ;;
        usuarios)
            who
            ;;
        información)
            id
            ;;
        conexión)
            ping -c 1 8.8.8.8 > /dev/null 2>&1
            if [ $? -eq 0 ]; then
                echo "Tienes conexión a internet."
            else
                echo "No tienes conexión a internet."
            fi
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac
done
