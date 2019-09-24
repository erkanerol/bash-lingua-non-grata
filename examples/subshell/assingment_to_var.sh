#!/usr/bin/env bash

function docker_ps_aq(){
  echo '24013d5fb1a2
8fb226a35e93
19346bbb5237
9505566dea74
c666d8474059'
}

# putting output of a command to a variable
containers="$(docker_ps_aq)"

if [[ "${containers}" != "" ]]; then
  echo "There are some running containers. Will stop one by one..."
fi

# I din't use qoutes otherwise it will only run once.
for var in $containers
do
    echo "Stopping $var..."
    sleep 1
done

