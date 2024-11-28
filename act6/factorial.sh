#!/bin/bash
numero=5
factorial=1
for ((i=1; i<=numero; i++)); do
  factorial=$((factorial * i))
done
echo $factorial

