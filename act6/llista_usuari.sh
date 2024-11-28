#!/bin/bash
read -p "Introduce una lista de elementos separados por espacio: " -a lista
for elemento in "${lista[@]}"; do
  echo $elemento
done

