build :
	npm install
	mkdir -p public/
	mkdir -p public/css
	mkdir -p public/img
	mkdir -p public/js
	lessc -x less/main.less > public/css/main.min.css
	cp -r img public
	uglifyjs js/main.js > public/js/main.min.js
	cp -r js/lib public/js
	cp -r views/index.html public/index.html
	cp -r bootstrap-3.0.0/fonts public/

upload:
	node uploader.js

clean:
	rm -r public

