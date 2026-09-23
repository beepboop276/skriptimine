#!/bin/bash
# Küsib numbreid seni, kuni sisestatakse 0. Negatiivsed jätab vahele.

while true; do
    echo -n "Sisesta number (0 lõpetab): "
    read nr

    if [ $nr -eq 0 ] 2>/dev/null; then
        echo "Sisestati 0, lõpetan töö."
        break
    elif [ $nr -lt 0 ] 2>/dev/null; then
        echo "Negatiivne arv jäetakse vahele!"
        continue
    fi

    echo "Sisestasid arvu: $nr"
done
