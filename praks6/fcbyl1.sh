#!/bin/bash
# Loendab 1 kuni 10 ja katkeb väärtusel 7

for (( i=1; i<=10; i++ )); do
    if [ $i -eq 7 ]; then
        echo "Jõuti 7-ni, katkestan tsükli!"
        break
    fi
    echo "Number: $i"
done
