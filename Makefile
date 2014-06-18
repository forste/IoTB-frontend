build :
	npm install
	mkdir -p public/
	mkdir -p public/css
	mkdir -p public/img
	mkdir -p public/js
	lessc -x less/main.less > public/css/main.min.css
	cp -r img public
	cp js/main.js public/js/main.js
	cp js/fixers.js public/js/fixers.js
	cp -r js/lib public/js
	cp -r views/*.html public/
	cp -r bootstrap-3.0.0/fonts public/

upload:
	node uploader.js

clean:
	rm -r public

