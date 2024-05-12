# Coc Neovim Dockerized

Dockerized Neovim with Coc installed plugin

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)

### Supported languages:
___

![Javascript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)
![Typescript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![NodeJS](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)  
![Python](https://img.shields.io/badge/Python-14354C?style=for-the-badge&logo=python&logoColor=white)  
![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)  
___

## Coc Neovim [node|rust|python] dockerized

Docker container which has Neovim's Coc plugin with [node|rust|python] language server.

### Running
- Docker run
```sh
docker run -e "NEOVIM_UID=1000" -e "NEOVIM_GID=1000" -e "NEOVIM_MNT_DIR=/path/to/project" -v /path/to/project:/mnt/project kolserdav/coc-neovim-[node|rust|python]:latest 
```
- Docker compose
```yml
services:
  neovim:
    image: kolserdav/coc-nvim-[node|rust|python]:latest
    container_name: neovim-[node|rust|python]
    environment:
      UID: ${NEOVIM_UID}
      GID: ${NEOVIM_GID}
    volumes:
      - ${NEOVIM_MNT_DIR}:/mnt/project
      - neovim:/home/node/.local/share
        #- ./custom.sh:/home/node/custom.sh
    hostname: neovim-[node|rust|python]
volumes:
  neovim: {}
```

### Required environment variables
- `NEOVIM_UID` - Host system user id
- `NEOVIM_GID` - Host system group id
### Volumes
- `/path/to/project:/mnt/project` - Access to project files from container
- `neovim:/home/node/.local/share` - Save nvim config between container recreates

Source: [coc-nvim-dockerized](https://github.com/kolserdav/coc-nvim-dockerized)

### Dockerhub links  
[coc-nvim-node](https://hub.docker.com/r/kolserdav/coc-nvim-node)  
[coc-nvim-rust](https://hub.docker.com/r/kolserdav/coc-nvim-rust)  
[coc-nvim-python](https://hub.docker.com/r/kolserdav/coc-nvim-python)  
