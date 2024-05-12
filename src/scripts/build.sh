#! /usr/bin/bash

NODES=$(sh $PWD/src/constants/nodes.sh)
NODES_ARR=($(echo $NODES | tr "," "\n"))
VERSION=$(sh $PWD/src/constants/version.sh)

platform="linux/arm64,linux/amd64"

for node in "${NODES_ARR[@]}"
do  
    echo "Building '$node' for plarform $platform"
    cd $PWD/src/platforms/$node/generated
    docker buildx build --platform=$platform --output="type=registry" --tag="kolserdav/coc-nvim-$node:$VERSION" --tag="kolserdav/coc-nvim-$node:latest" .
    docker pushrm "kolserdav/coc-nvim-$node:$VERSION"
    docker pushrm "kolserdav/coc-nvim-$node:latest"
done
