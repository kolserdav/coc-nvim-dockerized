FROM node:bookworm-slim

ENV NVIM_USER=node

RUN apt-get update -y && apt-get install curl sudo neovim git -y

ENV HOME=/home/$NVIM_USER
ENV XDG_CONFIG_HOME=$HOME/.local/share

COPY init.sh $HOME/init.sh
COPY entrypoint.sh $HOME/entrypoint.sh

RUN usermod -aG sudo $NVIM_USER
RUN echo "$NVIM_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$NVIM_USER

USER $NVIM_USER

WORKDIR $HOME

RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

COPY init.vim $XDG_CONFIG_HOME/nvim/init.vim
ENTRYPOINT ["sh", "./entrypoint.sh"]
CMD ["sh", "./init.sh"]
