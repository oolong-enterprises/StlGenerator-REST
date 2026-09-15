FROM ubuntu:latest
LABEL authors="oolon"

FROM debian:bookworm-slim

RUN apt-get update \
    && apt-get install -y openscad \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

ENTRYPOINT ["openscad"]
