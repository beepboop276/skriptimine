#!/bin/bash
# Skript väljastab aastaaja vastavalt sisestatud kuu numbrile

echo -n "Sisesta kuu number: "
read kuu

if [ $kuu -eq 1 -o $kuu -eq 2 -o $kuu -eq 12 ] 2>/dev/null; then
    echo "Praegu on talv"
elif [ $kuu -ge 3 -a $kuu -le 5 ] 2>/dev/null; then
    echo "Praegu on kevad"
elif [ $kuu -ge 6 -a $kuu -le 8 ] 2>/dev/null; then
    echo "Praegu on suvi"
elif [ $kuu -ge 9 -a $kuu -le 11 ] 2>/dev/null; then
    echo "Praegu on sügis"
else
    echo "Vigane kuu number! Sisesta arv 1-12."
fi
