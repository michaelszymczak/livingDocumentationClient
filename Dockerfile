# VERSION 0.1
# DOCKER-VERSION 0.9.1

FROM    ubuntu:14.04

RUN apt-get update;\
    apt-get install -y npm phantomjs make;\
    ln -s /usr/bin/nodejs /usr/bin/node;\
    npm install -g bower;\
    npm install -g karma;\
    npm install -g grunt-cli

EXPOSE  8888

ADD . /src
WORKDIR /src

RUN make install

ENTRYPOINT ["make"]
CMD ["run"]
