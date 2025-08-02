FROM docker.io/debian:bookworm-slim

ADD https://codeberg.org/silverpill/mitra/releases/download/v4.7.0/mitra_4.7.0_amd64.deb mitra_amd64.deb

RUN dpkg -i mitra_amd64.deb

CMD ["mitra", "server"]
