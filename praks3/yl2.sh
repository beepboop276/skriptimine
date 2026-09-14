#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajalike küpsisepakkide arvu

echo -n "Sisesta aluskandiku pikkus (cm): "
read pikkus
echo -n "Sisesta aluskandiku laius (cm): "
read laius
echo -n "Sisesta küpsise pikkus/laius (cm): "
read kypsis
echo -n "Sisesta kihtide arv: "
read kihte
echo -n "Sisesta küpsiste arv ühes pakis: "
read pakk_suurus

# Arvutame küpsiste arvu ühes kihis
pikkus_tk=$(expr $pikkus / $kypsis)
laius_tk=$(expr $laius / $kypsis)
kihi_kypsised=$(expr $pikkus_tk \* $laius_tk)

# Arvutame küpsiste koguarvu
kokku_kypsiseid=$(expr $kihi_kypsised \* $kihte)

# Arvutame pakkide arvu (ümardades ülespoole)
pakke=$(( (kokku_kypsiseid + pakk_suurus - 1) / pakk_suurus ))

echo "Vaja läheb $pakke pakki küpsiseid."
