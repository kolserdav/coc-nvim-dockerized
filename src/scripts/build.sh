#! /usr/bin/bash

platform="linux/arm64,linux/amd64"

cd src/platforms/node

echo "Building node from plarform $platform"
docker buildx build --platform=$platform --output="type=registry" --tag="kolserdav/neovim-node:0.0.1" .