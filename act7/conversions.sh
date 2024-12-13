#!/bin/bash

while true; do
  read -p "Introduce una cantidad en metros (o escribe 'salir' para terminar): " metros

  # Si el usuario escribe "salir", salimos del bucle
  if [[ "$metros" == "salir" ]]; then
    break
  fi

  # Validamos que la entrada sea un número
  if [[ ! "$metros" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Por favor, introduce un número válido."
    continue
  fi

  read -p "A qué unidad deseas convertir (cm, mm, km): " unidad

  case "$unidad" in
    cm)
      cm=$(echo "$metros * 100" | bc -l)
      echo "$metros metros son $cm centímetros."
      ;;
    mm)
      mm=$(echo "$metros * 1000" | bc -l)
      echo "$metros metros son $mm milímetros."
      ;;
    km)
      km=$(echo "$metros / 1000" | bc -l)
      echo "$metros metros son $km kilómetros."
      ;;
    *)
      echo "Unidad no válida. Opciones válidas: cm, mm, km."
      ;;
  esac
done
