FROM node

RUN apt-get update
RUN apt-get -y install git

WORKDIR /usr/src/app
RUN git clone -n https://github.com/roobscoob/NodePolus.git
WORKDIR /usr/src/app/NodePolus
RUN npm install

WORKDIR /usr/src/app
VOLUME /usr/src/app
EXPOSE 22023/udp
EXPOSE 22024/udp
ENTRYPOINT ["/bin/bash", "startup.sh" ]