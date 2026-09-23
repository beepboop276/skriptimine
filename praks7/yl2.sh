#!/bin/bash
# Skript väljastab tärnide ristküliku vastavalt kasutaja sisestatud mõõtmetele

echo -n "Sisesta ridade arv: "
read rida
echo -n "Sisesta tarnide arv reas: "
read tarnid

for (( i=1; i<=rida; i++ )); do
    echo -n "$i. "
    for (( j=1; j<=tarnid; j++ )); do
        echo -n "* "
    done
    echo ""
done
