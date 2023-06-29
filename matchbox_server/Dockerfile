# Build stage
FROM rust:1.64 as builder
WORKDIR /app
RUN git clone https://github.com/johanhelsing/matchbox.git
WORKDIR /app/matchbox
RUN git checkout tags/v0.6.1
RUN cargo build --bin matchbox_server --release

# Prod stage
FROM gcr.io/distroless/cc
COPY --from=builder /app/matchbox/target/release/matchbox_server /
CMD ["./matchbox_server"]
