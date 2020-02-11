#!/bin/sh

config="config.ini"

while IFS= read -r line; do
    if [ "${line:0:1}" == "#" ] || [ -z "$line" ];
    then
       continue       
    fi
    IFS='='    
    read -ra line <<< "$line"
    index=0
    key=""
    value=""
    for i in "${line[@]}"; do
        index=$((index+1))
        i="$(echo -e "${i}" | tr -d '[:space:]')"
        if [ $index -gt 2 ]; then
           echo $index "break"
           break;
        fi
        if [ $index == 1 ];then
           key=$i
        else
           eval "$key"="$i"
        fi
    done
done < "$config"

echo "-------------"
echo
echo $db_host
echo $db_name
echo $db_user
echo $db_password



