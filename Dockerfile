FROM rust:1.64.0
WORKDIR /usr/src
RUN git clone https://github.com/johanhelsing/matchbox.git
WORKDIR /usr/src/matchbox
RUN git checkout tags/v0.6.1
RUN cargo build --bin matchbox_server --release
WORKDIR /usr/src/matchbox/target/release
CMD ["./matchbox_server"]