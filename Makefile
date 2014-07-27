prepare-system:
	apt-get update && \
	apt-get install -y npm phantomjs && \
	ln -s -f /usr/bin/nodejs /usr/bin/node && \
	npm install -g bower && \
	npm install -g karma && \
	npm install -g grunt-cli

install:
	npm cache clear && \
	npm install && \
	bower install --allow-root && \
	grunt production

run:
	node nodestaticserver.js

test:
	grunt test

clean:
	grunt clean && rm -rf node_modules


container-build:
	docker build -t michaelszymczak/livingDocumentationClient .

container-run:
	docker run -p 48888:8888 -d michaelszymczak/livingDocumentationClient


.PHONY: prepare-system install run test clean container-build container-run
