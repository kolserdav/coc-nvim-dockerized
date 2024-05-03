FROM node:bookworm-slim

ENV NVIM_USER=node
ENV MNT_DIR=/mnt/project

RUN mkdir -p $MNT_DIR
RUN apt-get update -y && apt-get install curl sudo git -y
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage \
       && chmod u+x nvim.appimage \
       && ./nvim.appimage --appimage-extract \
       && ln -s /squashfs-root/AppRun /usr/bin/nvim

ENV HOME=/home/$NVIM_USER
ENV XDG_CONFIG_HOME=$HOME/.local/share

COPY init.sh /opt/init.sh
COPY entrypoint.sh /opt/entrypoint.sh

RUN usermod -aG sudo $NVIM_USER
RUN echo "$NVIM_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$NVIM_USER

USER $NVIM_USER

RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

COPY init.vim $XDG_CONFIG_HOME/nvim/init.vim

WORKDIR $MNT_DIR

ENTRYPOINT ["sh", "/opt/entrypoint.sh"]
CMD ["sh", "/opt/init.sh"]
