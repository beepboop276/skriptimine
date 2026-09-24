#!/bin/bash
# Skript lahendab ruutvõrrandi Ax^2 + Bx + C = 0

# Kontrollime argumentide arvu
if [ $# -ne 3 ]; then
    echo "Kasutamine: $0 A B C"
    echo "Näide: $0 1 -3 2"
    exit 1
fi

A=$1
B=$2
C=$3

# Arvutame ja lahendame Pythoni abil
python3 - "$A" "$B" "$C" << 'EOF'
import sys, math

try:
    a = float(sys.argv[1])
    b = float(sys.argv[2])
    c = float(sys.argv[3])
except ValueError:
    print("Viga: Sisestatud kordajad peavad olema arvud!")
    sys.exit(1)

if a == 0:
    print("Viga: Kordaja A ei tohi olla 0!")
    sys.exit(1)

d = b**2 - 4*a*c

if d < 0:
    print("Reaalarvulisi lahendeid ei ole.")
elif d == 0:
    x = -b / (2*a)
    print(f"Võrrandil on üks lahend:\nx = {x:.5f}")
else:
    x1 = (-b + math.sqrt(d)) / (2*a)
    x2 = (-b - math.sqrt(d)) / (2*a)
    print(f"Võrrandil on kaks lahendit:\nx1 = {x1:.5f}\nx2 = {x2:.5f}")
EOF
