#!/bin/bash
nmap -Pn -v -p- -sV -T4 -iL ../ip.txt -oA nmap-fullports

targets=()
string=""
while IFS= read -r line; do
    targets+=( "$line" )
done < <( cat nmap-fullports.nmap|grep open|cut -d/ -f1 )

for i in "${targets[@]}"
do
   string="$string$i,"
   # or do whatever with individual element of the array
done
echo $string

$(nmap -Pn -v -p$string -A -iL ../ip.txt -oA nmap-all) 
