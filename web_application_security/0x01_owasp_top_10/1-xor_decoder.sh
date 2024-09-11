#!/bin/bash
dpass=$(echo "$1" | sed "s/{xor}//" | base64 --decode)
xor_pass=""
for ((i = 0; i < ${#dpass}; i++)); do
	char=${dpass:$i:1}
	ascii=$(printf "%d" "'$char")
	xor_digit=$(($ascii ^ 95))
	xor_pass+="$(printf "$(printf '\\x%x' $xor_digit)")"
done
echo -e "$xor_pass"