#!/bin/bash

# Función para mostrar el menú de opciones
mostrar_menu() {
    echo "Selecciona una operación:"
    echo "1. Sumar"
    echo "2. Restar"
    echo "3. Multiplicar"
    echo "4. Dividir"
    read -p "Opción: " opcion
}

# Función para realizar el cálculo
calcular() {
    case $opcion in
        1) resultado=$(($num1 + $num2)) ;;
        2) resultado=$(($num1 - $num2)) ;;
        3) resultado=$(($num1 * $num2)) ;;
        4)
            # Verificar si el divisor es cero
            if [ $num2 -eq 0 ]; then
                echo "Error: No se puede dividir por cero"
                return 1
            fi
            resultado=$(($num1 / $num2)) ;;
        *)
            echo "Opción inválida"
            return 1 ;;
    esac

    echo "El resultado es: $resultado"
}

# Pedir al usuario los números y la operación
mostrar_menu
read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2

# Llamar a la función para realizar el cálculo
calcular

# Verificar si hubo algún error
if [ $? -eq 1 ]; then
    exit 1
fi
