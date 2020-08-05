#!/bin/bash 

export NODE_VERSION=4.8.6

apk add --no-cache libstdc++ 
apk add --no-cache --virtual .build-deps \
        binutils-gold \
        curl \
        g++ \
        gcc \
        gnupg \
        libgcc \
        linux-headers \
        make \
        python 

curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz" 
tar -xf "node-v$NODE_VERSION.tar.xz" 
cd "node-v$NODE_VERSION" 
./configure 
make -j$(getconf _NPROCESSORS_ONLN) 
make install 
apk del .build-deps 
cd .. \
rm -rf node-v$NODE_VERSION.tar.xz node-v$NODE_VERSION


exit 0 
