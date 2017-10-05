#!/bin/bash
echo "-------------------------------"
echo "USERNAME          EXP DATE     "
echo "-------------------------------"
while read expired
do
        NEKO="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $NEKO | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$NEKO" "$exp"
        fi
done < /etc/passwd
All="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "-------------------------------"
echo "All Account : $NEKO user"
echo "-------------------------------"
echo -e "http://line.me/ti/p/Dh6o2a5Ar9"
echo -e ""
