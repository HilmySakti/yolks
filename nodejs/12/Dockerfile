FROM        --platform=$TARGETOS/$TARGETARCH node:12-bullseye-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install ffmpeg imagemagick iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential libtool iputils-ping \
            && useradd -m -d /home/container container

RUN         npm install npm@latest -g

RUN         npm install pm2 -g

RUN         npm install puppeteer -g

RUN         npm install yarn -g

RUN         npm install speedtest-net -g

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
