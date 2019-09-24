#!/usr/bin/env bash

function docker_ps_aq(){
  echo '24013d5fb1a2
8fb226a35e93
19346bbb5237
9505566dea74
c666d8474059'
}

function docker_rm(){
  for var in "$@"
  do
      echo "Running docker rm for $var"
  done
}

# similar to "docker rm $(docker ps -aq)"
# I didn't put qoutes intentionally since 
# docker rm needs the argument seperately
docker_rm $(docker_ps_aq)