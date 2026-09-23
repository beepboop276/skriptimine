#!/bin/bash
# Skript arvutab vajaminevate busside arvu vastavalt reisijate ja kohtade arvule

echo -n "Sisesta reisijate arv: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Täisbusside arv ja üleliigsed reisijad
bussid=$((reisijad / kohad))
maha=$((reisijad % kohad))

# Kui tekib maha jäänud reisijaid, lisame ühe bussi juurde
if [ $maha -gt 0 ]; then
    bussid=$((bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"
