#!/bin/bash
# Skript kontrollib käsurea parameetrina antud valikut

osch=$1

if [ "$osch" -eq 1 ] 2>/dev/null; then
    echo "You Pick up Unix (Sun Os)"
else
    if [ "$osch" -eq 2 ] 2>/dev/null; then
        echo "You Pick up Linux (Red Hat)"
    else
        echo "What you don't like Unix/Linux OS."
    fi
fi
