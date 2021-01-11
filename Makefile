.DEFAULT_GOAL := help

clean:
	@rm -rfv ttf woff2

build:
	@mkdir -p ttf woff2
	@sh ./unhint.sh

help:
	@echo "Invalid args"
