FROM node:bookworm-slim

USER root
RUN apt-get install python3 python3-pip -y
RUN ln -s $(which python3) /usr/bin/python
USER $NVIM_USER

WORKDIR $EXTENSIONS
RUN npm install coc-pyright --ignore-scripts --no-lockfile --omit=dev
