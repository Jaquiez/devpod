#!/bin/sh

COMMAND="$1"

if [ ! -f ./devpod/Dockerfile ] || [ ! -f ./devpod/init-firewall.sh ]; then
  mkdir devpod
  ./make-dockerfile.sh
fi

docker build -t devpod ./devpod

echo "Now optionally add devpod as an alias:\necho 'alias devpod=\"docker run -it --rm --name devpod -v ./:/workspace --add-host=host.docker.internal:172.17.0.1 devpod claude --dangerously-skip-permissions\"' >> ~/.bashrc"