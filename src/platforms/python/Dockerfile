FROM node:bookworm-slim

RUN sudo apt-get install python3 python3-pip -y
RUN sudo ln -s $(which python3) /usr/bin/python

WORKDIR $EXTENSIONS
RUN npm install coc-pyright --ignore-scripts --no-lockfile --omit=dev
