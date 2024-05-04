FROM node:bookworm-slim

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH=/home/$NVIM_USER/.cargo/bin:$PATH

RUN rustup component add rust-analyzer