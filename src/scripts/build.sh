#! /usr/bin/bash

NODES=$(sh $PWD/src/constants/nodes.sh)
NODES_ARR=($(echo $NODES | tr "," "\n"))

platform="linux/arm64,linux/amd64"

for node in "${NODES_ARR[@]}"
do  
    echo "Building '$node' for plarform $platform"
    cd $PWD/src/platforms/$node/generated
    docker buildx build --platform=$platform --output="type=registry" --tag="kolserdav/coc-nvim-$node:0.0.1" .
done
