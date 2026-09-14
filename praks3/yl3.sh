#!/bin/bash
# Skript arvutab täidetud busside arvu ja maha jäänud inimeste arvu

echo -n "Sisesta reisijate arv grupis: "
read reisijad
echo -n "Sisesta kohtade arv bussis: "
read kohad

# Täis busside arv (täisarvuline jagamine)
bussid=$(expr $reisijad / $kohad)

# Maha jäänud reisijate arv (jäägi leidmine)
maha=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud inimesi: $maha"
