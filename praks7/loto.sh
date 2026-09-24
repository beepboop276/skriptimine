#!/bin/bash
# Skript genereerib 5 erinevat juhuslikku arvu vahemikus 1-50

# Määrame ajutise faili korduste kontrollimiseks
ajutine_fail="/tmp/loto_temp_$$.txt"
> "$ajutine_fail" # Tühjendame või loome faili

loendur=0

# Genereerime kuni on olemas 5 ERINEVAT numbrit
while [ $loendur -lt 5 ]; do
    # Arv vahemikus 1 kuni 50
    nr=$(( ($RANDOM % 50) + 1 ))

    # Kontrollime, kas number on juba ajutises failis (grep -x otsib täpset rida)
    if ! grep -xq "$nr" "$ajutine_fail"; then
        echo "$nr" >> "$ajutine_fail"
        loendur=$((loendur + 1))
    fi
done

# Moodustame väljundrea koos kuupäeva ja kellaajaga
aeg=$(date "+%Y-%m-%d %H:%M:%S")
numbrid=$(cat "$ajutine_fail" | tr '\n' ' ' | xargs)
tulemus="[$aeg] Lotonumbrid: $numbrid"

# Kustutame ajutise faili
rm -f "$ajutine_fail"

# Küsime kasutajalt väljundi valikut
echo "5 lotonumbrit on genereeritud!"
echo "1) Kuva terminalis (stdout)"
echo "2) Salvesta faili (loto_tulemused.txt)"
echo -n "Tee oma valik (1 või 2): "
read valik

case $valik in
    1)
        echo ""
        echo "$tulemus"
        ;;
    2)
        echo "$tulemus" >> loto_tulemused.txt
        echo "Tulemus salvestati faili loto_tulemused.txt"
        ;;
    *)
        echo "Vigane valik! Väljastame tulemuse terminali:"
        echo "$tulemus"
        ;;
esac
