FROM docker.io/debian:bookworm-slim

LABEL  org.opencontainers.image.authors="Daniele Tricoli <eriol@mornie.org>" \
       org.opencontainers.image.source="https://github.com/eriol/oci-mitra"

RUN apt-get update && apt-get install -y ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ADD https://codeberg.org/silverpill/mitra/releases/download/v4.10.0/mitra_4.10.0_amd64.deb mitra_amd64.deb

RUN dpkg -i mitra_amd64.deb \
    && chown root:root /var/lib/mitra

CMD ["mitra", "server"]
