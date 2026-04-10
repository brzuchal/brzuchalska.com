RUBY_BIN = /opt/homebrew/opt/ruby/bin/ruby
BUNDLE = /opt/homebrew/opt/ruby/bin/bundle

.PHONY: install build watch serve clean

install:
	$(BUNDLE) config set --local path vendor/bundle
	$(BUNDLE) install

build:
	$(BUNDLE) exec jekyll build

watch:
	$(BUNDLE) exec jekyll build --watch

serve:
	$(BUNDLE) exec jekyll serve --watch --livereload --host 127.0.0.1 --port 4000

clean:
	$(BUNDLE) exec jekyll clean
