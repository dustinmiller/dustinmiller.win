SHELL:=/bin/bash

.PHONY: help build serve clean lint check optimize-css optimize-images

help:			## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:			## Build the Zola site
	zola build

serve:			## Serve the Zola site locally (with live reload)
	zola serve

clean:			## Clean the output directory
	rm -rf public/

lint:			## Run all linters (markdown, links, etc.)
	markdown-lint link-check

markdown-lint:		## Lint Markdown files
	markdownlint content/ *.md

link-check:		## Check for broken links in the built site
	zola build
	htmltest public/

check:			## Check Zola configuration and content
	zola check

optimize-css:		## Optimize CSS files using cleancss
	cleancss --format keep-breaks -o static/styles.css static/styles.css

optimize-images:	## Optimize images (PNG to WebP conversion)
	@for file in static/images/*.png; do \
		echo "Optimizing $$file..."; \
		optipng -- -backup -o7 "$$file"; \
		cwebp "$$file" -q 80 -o "$${file%%.png}.webp"; \
		rm "$$file"; \
		echo "Converted $$file to $${file%%.png}.webp and removed original."; \
	done

deploy:			## Deploy the site (e.g., to GitHub Pages or Netlify)
	zola build
	# Add your deployment command here, e.g., netlify deploy --prod
