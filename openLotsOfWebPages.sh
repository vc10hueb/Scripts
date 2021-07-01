#!/bin/bash

server_list=(
  http://localhost:8090/api/example
)

for i in ${server_list[@]}; do
  open -a /Application/Google\ Chrome.app $i
done;