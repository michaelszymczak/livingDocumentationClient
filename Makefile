install:
	npm install && node_modules/bower/bin/bower install && node_modules/grunt-cli/bin/grunt production

run:
	node nodestaticserver.js

test:
	node_modules/grunt-cli/bin/grunt test

clean:
	node_modules/grunt-cli/bin/grunt clean && rm -rf node_modules


container-build:
	docker build -t michaelszymczak/livingDocumentationClient .

container-run:
	docker run -p 48888:8888 -d michaelszymczak/livingDocumentationClient


.PHONY: install run test clean container-build container-run
