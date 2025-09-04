#!/bin/bash

ORIGEN="$HOME/Documentos"
DESTINO="//localhost/Respaldo"
USUARIO="usuario1"
PASSWORD="usuario1"
PORT=1445

for archivo in "$ORIGEN"/*; do
   nombre_archivo=$(basename "$archivo")  # solo nombre del archivo
   echo "Subiendo: $nombre_archivo"
   smbclient "$DESTINO" -p $PORT -U "$USUARIO%$PASSWORD" -c "put \"$archivo\" \"$nombre_archivo\""
done
