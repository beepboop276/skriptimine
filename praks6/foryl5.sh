#!/bin/bash
# Jagab sõnad semikooloni järgi

tekst="koer;kass;hiir"
IFS=';'

for sona in $tekst; do
    echo "Loom: $sona"
done
