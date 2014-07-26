# VERSION 0.1
# DOCKER-VERSION 0.9.1

FROM    ubuntu:14.04

RUN apt-get update; apt-get install -y npm phantomjs

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install; ln -s /usr/bin/nodejs /usr/bin/node; node_modules/bower/bin/bower --allow-root install; node_modules/grunt-cli/bin/grunt production

EXPOSE  8888
CMD ["nodejs", "/src/nodestaticserver.js"]
