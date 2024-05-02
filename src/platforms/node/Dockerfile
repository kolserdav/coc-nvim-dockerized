FROM node:bookworm-slim

ENV NVIM_USER=node
ENV MNT_DIR=/mnt

RUN apt-get update -y && apt-get install curl sudo neovim git -y

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
ENV PATH=$PATH:$BIN_PATH

ENTRYPOINT ["sh", "/opt/entrypoint.sh"]
CMD ["sh", "/opt/init.sh"]
