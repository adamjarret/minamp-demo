.PHONY: help build start clean valid

help:					## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

start:				## Preview site locally
	hugo serve

build:				## Build site with hugo
	hugo

clean:				## Delete output directory
	rm -rf docs/

valid:				## Validate docs site with AMP Validator (requires: `npm install -g amphtml-validator`)
	find ./docs -name '*.html' -not -path '*/page/1/*' | xargs amphtml-validator 2>&1 >/dev/null | tee /dev/tty | exit $$(wc -l)