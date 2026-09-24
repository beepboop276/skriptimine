#!/bin/bash
# Skript leiab kõik õnnenumbrid vahemikus 1000-9999

for (( i=1000; i<=9999; i++ )); do
    arv=$i
    
    # Korrame numbrite liitmist seni, kuni tulemus on suurem kui 9
    while [ $arv -gt 9 ]; do
        summa=0
        temp=$arv
        
        # Arvutame antud arvu numbrite summa
        while [ $temp -gt 0 ]; do
            jaak=$((temp % 10))
            summa=$((summa + jaak))
            temp=$((temp / 10))
        done
        
        arv=$summa
    done
    
    # Kui ühekohaliseks taandatud tulemus on 7, väljastame algse arvu $i
    if [ $arv -eq 7 ]; then
        echo "Õnnenumber: $i"
    fi
done
