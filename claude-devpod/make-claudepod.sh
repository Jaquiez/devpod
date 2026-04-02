#!/bin/sh

COMMAND="$1"

if [ ! -f ./claudepod/Dockerfile ] || [ ! -f ./claudepod/init-firewall.sh ]; then
  mkdir claudepod
  ./make-dockerfile.sh
fi

docker build -t claudepod ./claudepod

echo "Now optionally add claudepod as an alias:\necho 'alias claudepod=\"docker run -it --rm --name claudepod -v ./:/workspace --add-host=host.docker.internal:172.17.0.1 claudepod claude --dangerously-skip-permissions\"' >> ~/.bashrc"