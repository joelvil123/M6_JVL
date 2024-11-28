#!/bin/bash
altura=5
for ((i=1; i<=altura; i++)); do
  for ((j=1; j<=altura-i; j++)); do
    echo -n " "
  done
  for ((k=1; k<=i; k++)); do
    echo -n "$k "
  done
  echo
done

