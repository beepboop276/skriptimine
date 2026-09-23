#!/bin/bash
# Skript kontrollib, kas arv on algarv

echo -n "Sisesta suvaline arv: "
read arv

if [ $arv -lt 2 ] 2>/dev/null; then
    echo "$arv - ei ole algarv"
    exit 0
fi

jagaja=2
while [ $((arv % jagaja)) -ne 0 ]; do
    jagaja=$((jagaja + 1))
done

if [ $arv -eq $jagaja ]; then
    echo "$arv - on algarv"
else
    echo "$arv - ei ole algarv"
fi
