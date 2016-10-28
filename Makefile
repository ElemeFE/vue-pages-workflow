.PHONY: build


dev:
	node_modules/.bin/gulp dev-html
	node_modules/.bin/webpack-dev-server --config configs/webpack.config.js --hot --inline --content-base build/

build:
	node_modules/.bin/gulp del
	node_modules/.bin/webpack --config configs/webpack.build.js
	node_modules/.bin/webpack --config configs/webpack.server.js
	node_modules/.bin/gulp build-html
