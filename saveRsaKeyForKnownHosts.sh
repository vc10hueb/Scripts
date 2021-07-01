declare -a hostnames=(
  "hostname"
)

for i in "${hostnames[@]}}"
do
  ssh-keyscan "$i" >> ~/.ssh/known_hosts && ssh-copy-id "$i"
done