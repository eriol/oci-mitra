FROM docker.io/debian:bookworm-slim

RUN apt-get update && apt-get install -y ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ADD https://codeberg.org/silverpill/mitra/releases/download/v4.9.0/mitra_4.9.0_amd64.deb mitra_amd64.deb

RUN dpkg -i mitra_amd64.deb \
    && chown root:root /var/lib/mitra

CMD ["mitra", "server"]
