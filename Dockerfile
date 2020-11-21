FROM node

RUN apt-get update && apt-get -y install \
  git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
VOLUME /usr/src/app
EXPOSE 22023/udp
EXPOSE 22024/udp
ADD ./startup.sh /usr/src/app/startup.sh
ENTRYPOINT ["/bin/bash", "startup.sh" ]
