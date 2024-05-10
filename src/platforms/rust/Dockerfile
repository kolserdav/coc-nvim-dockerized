FROM node:bookworm-slim

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH=/home/$NVIM_USER/.cargo/bin:$PATH

RUN rustup component add rust-analyzer

WORKDIR $EXTENSIONS
RUN npm install coc-rust-analyzer --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev