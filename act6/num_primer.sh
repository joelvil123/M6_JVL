#!/bin/bash
numero=17
es_primo=1
for ((i=2; i*i<=numero; i++)); do
  if ((numero % i == 0)); then
    es_primo=0
    break
  fi
done
if ((es_primo == 1 && numero > 1)); then
  echo "És primer"
else
  echo "No és primer"
fi

