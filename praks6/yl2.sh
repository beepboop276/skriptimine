#!/bin/bash
# Skript arvutab sisestatud arvu numbrite summa

echo -n "Sisesta suvaline täisarv: "
read algne_arv

# Teeme arvu positiivseks, kui sisestati negatiivne arv
arv=${algne_arv#-}
summa=0

while [ $arv -gt 0 ]; do
    jaak=$((arv % 10))
    summa=$((summa + jaak))
    arv=$((arv / 10))
done

# Kui algne arv oli negatiivne, siis teeme ka summa negatiivseks
if [ $algne_arv -lt 0 ] 2>/dev/null; then
    summa=$((summa * -1))
fi

echo "Arvu $algne_arv numbrite summa on $summa"
