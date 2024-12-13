#!/bin/bash

while true; do
  read -p "Elige: piedra, papel o tijera (o escribe 'salir'): " opcion_usuario

  # Si el usuario escribe "salir", salimos del bucle
  if [[ "$opcion_usuario" == "salir" ]]; then
    echo "¡Hasta la próxima!"
    break
  fi

  # Validar la entrada del usuario
  if [[ "$opcion_usuario" != "piedra" && "$opcion_usuario" != "papel" && "$opcion_usuario" != "tijera" ]]; then
    echo "Opción inválida. Elige: piedra, papel o tijera."
    continue
  fi

  # Opción aleatoria para la computadora
  opcion_computadora=$((RANDOM % 3))
  case $opcion_computadora in
    0) opcion_computadora="piedra";;
    1) opcion_computadora="papel";;
    2) opcion_computadora="tijera";;
  esac

  # Comparar opciones y determinar ganador
  if [[ "$opcion_usuario" == "$opcion_computadora" ]]; then
    echo "Empate. Ambos eligieron $opcion_usuario."
  elif [[ ($opcion_usuario == "piedra" && $opcion_computadora == "tijera") ||
         ($opcion_usuario == "papel" && $opcion_computadora == "piedra") ||
         ($opcion_usuario == "tijera" && $opcion_computadora == "papel") ]]; then
    echo "¡Ganaste! Elegiste $opcion_usuario y la computadora eligió $opcion_computadora."
  else
    echo "¡Perdiste! Elegiste $opcion_usuario y la computadora eligió $opcion_computadora."
  fi
done
