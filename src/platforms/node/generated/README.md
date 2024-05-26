## Coc Neovim node dockerized

Docker container which has Neovim's Coc plugin with "node" language server.

### Running
- Docker run
```sh
docker run -e "NEOVIM_UID=1000" -e "NEOVIM_GID=1000" -e "NEOVIM_MNT_DIR=/path/to/project" -v /path/to/project:/mnt/project kolserdav/coc-neovim-node:latest 
```
- Docker compose
```yml
services:
  neovim:
    image: kolserdav/coc-nvim-node
    container_name: neovim-node
    environment:
      UID: ${NEOVIM_UID}
      GID: ${NEOVIM_GID}
    volumes:
      - ${NEOVIM_MNT_DIR}:/mnt/project
      - neovim:/home/node/.local/share
        #- ./custom.sh:/home/node/custom.sh
    hostname: neovim-node
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
