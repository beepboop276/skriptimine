#!/bin/bash
#
# aja jargi tervitamine
#
echo -e "Sisesta aja vaartus: \c"
read aeg
# kontrollime
if [ $aeg -ge 6 -a $aeg -lt 12 ] 2>/dev/null; then
        echo "Tere hommikust!"
elif [ $aeg -ge 12 -a $aeg -lt 18 ] 2>/dev/null; then
        echo "Tere paevast!"
elif [ $aeg -ge 18 -a $aeg -lt 22 ] 2>/dev/null; then
        echo "Tere ohtust!"
elif [ $aeg -ge 22 -a $aeg -lt 24 ] 2>/dev/null || [ $aeg -ge 0 -a $aeg -lt 6 ] 2>/dev/null; then
        echo "Head ood!"
else
        echo "Vale sisend"
fi
