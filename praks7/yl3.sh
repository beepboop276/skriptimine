#!/bin/bash
# Skript väljastab tärnidest raami (õõnes ristkülik)

echo -n "Sisesta ridade arv: "
read rida
echo -n "Sisesta tarnide arv reas: "
read tarnid

for (( i=1; i<=rida; i++ )); do
    echo -n "$i. "
    for (( j=1; j<=tarnid; j++ )); do
        # Kui on esimene/viimane rida VÕI esimene/viimane tärn, trükitakse *, muidu tühik
        if [ $i -eq 1 -o $i -eq $rida -o $j -eq 1 -o $j -eq $tarnid ]; then
            echo -n "* "
        else
            echo -n "  "
        fi
    done
    echo ""
done
