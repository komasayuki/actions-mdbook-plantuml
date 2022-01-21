FROM rust:1.58.1
# COPY entrypoint.sh /entrypoint.sh

RUN cargo install mdbook && \
    cargo install mdbook-puml

RUN apt-get update && apt-get install -y --no-install-recommends \
    graphviz \
    plantuml \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/cargo/bin/mdbook", "build"]