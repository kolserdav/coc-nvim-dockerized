## Coc Neovim ${NEOVIM_NAME} dockerized

Docker container which has Neovim's Coc plugin with "${NEOVIM_NAME}" language server.

### Running
- Docker run
```sh
docker run -e "NEOVIM_UID=1000" -e "NEOVIM_GID=1000" -e "NEOVIM_MNT_DIR=/path/to/project" -v /path/to/project:/mnt/project kolserdav/coc-neovim-${NEOVIM_NAME}:latest 
```
- Docker compose
```yml
services:
  neovim:
    image: kolserdav/coc-nvim-${NEOVIM_NAME}
    container_name: neovim-${NEOVIM_NAME}
    environment:
      UID: ${NEOVIM_UID}
      GID: ${NEOVIM_GID}
    volumes:
      - ${NEOVIM_MNT_DIR}:/mnt/project
      - neovim-${NEOVIM_NAME}:/home/node/.local/share
        #- ./custom.sh:/home/node/custom.sh
    hostname: neovim-${NEOVIM_NAME}
volumes:
  neovim-${NEOVIM_NAME}: {}
```

### Required environment variables
- `NEOVIM_UID` - Host system user id
- `NEOVIM_GID` - Host system group id
### Volumes
- `/path/to/project:/mnt/project` - Access to project files from container
- `neovim:/home/node/.local/share` - Save nvim config between container recreates

Source: [coc-nvim-dockerized](https://github.com/kolserdav/coc-nvim-dockerized)