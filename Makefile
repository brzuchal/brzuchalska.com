.PHONY: install build watch serve clean

install:
	bundle config set --local path vendor/bundle
	bundle install

build:
	bundle exec jekyll build

watch:
	bundle exec jekyll build --watch

serve:
	bundle exec jekyll serve --watch --livereload --host 127.0.0.1 --port 4000

clean:
	bundle exec jekyll clean
