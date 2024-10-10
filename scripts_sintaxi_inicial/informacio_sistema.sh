echo "Hola $USER"
echo "El directorio actual es:  $(pwd)"
echo "Data i hora : $(date)"
echo  "Llista d'arxius del directori actual: total $(ls -1 | wc -l)"
ls -la
echo "Nom del sistema operatiu: $(uname -o)"
echo "Versió del nucli: $(uname -r)"
echo "Quantitat de memoria utilitzada i disponible:"
free -h
echo "Quantitat d'espai disponible en disc pel directori arrel /:"
df -h /
