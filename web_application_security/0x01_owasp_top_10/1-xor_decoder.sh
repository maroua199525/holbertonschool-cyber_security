#!/bin/bash



encoded_string="$1"



encoded_string="${encoded_string#'{xor}'}"



decoded_string=$(echo "$encoded_string" | base64 --decode)



output=""

key=95



for ((i=0; i<${#decoded_string}; i++)); do

    char="${decoded_string:$i:1}"

    ascii_value=$(printf "%d" "'$char")

    

    xor_value=$((ascii_value ^ key))

    

    output+=$(printf "\\$(printf '%03o' $xor_value)")

done



echo "$output"