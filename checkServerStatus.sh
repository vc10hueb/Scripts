#!/bin/bash

server_list=(
  https://localhost:8090/api/status
)

printf "+"
printf %107s |tr " " "-"
printf "+\n"
printf "| %-70s | %-32s |" 'STATUS URL' 'RESPONSE CODE'
printf "+\n"

for i in ${servers_list[@]}; do
  response_code=$(curl -i -k -s $i | grep HTTP)
  response_code="$(echo -e "${response_code}" | sed -e 's/[[:space:]]*$//')"
  printf "| %-70s | %-32s |\n" "$i" "$response_code"
done;

printf "+"
printf %107s |tr " " "-"
printf "+\n"