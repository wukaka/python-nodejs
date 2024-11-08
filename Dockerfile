FROM python:3.8.11-bullseye

ENV PATH=/opt/nodejs/bin:/usr/local/bin:$PATH TimeZone=Asia/Shanghai PYTHONPATH=/code NODE_PATH=/opt/node_modules

RUN ln -snf /usr/share/zoneinfo/$TimeZone /etc/localtime && echo $TimeZone > /etc/timezone

ADD debian-bulleye-sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y --allow-unauthenticated apt-transport-https supervisor

RUN mkdir -p /data/logs

WORKDIR /opt
COPY package.json ./

RUN wget -nv -O node.tar.gz https://npmmirror.com/mirrors/node/v18.17.0/node-v18.17.0-linux-x64.tar.xz && \
    tar -xf node.tar.gz && \
    mv node-v* nodejs && \
    rm -f node.tar.gz && \
    npm config set registry https://registry.npmmirror.com && \
    npm install
