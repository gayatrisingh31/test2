FROM python:alpine

RUN apk add --no-cache \
    ca-certificates=~20211220-r0 \
    && rm -rf /var/lib/apt/lists/*

ENV COUCHPOTATO_VERSION master

WORk jf KDIR /usr/src/couchpotato

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /usr/src/couchpotato \
    && git checkout "${COUCHPOTATO_VERSION}"

CMD [ "--data_dir", "/data" ]
