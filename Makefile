.PHONY: help build start clean

help:				## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

start:				## Preview site locally

	hugo serve

build:				## Build site with hugo

	hugo

clean:				## Delete output directory
	rm -rf docs/
