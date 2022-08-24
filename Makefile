#!/usr/bin/make

# -------------------------------------------------------------- #
# Note: this file is automatically managed in template-terraform #
# -------------------------------------------------------------- #

# Docker

pull: ## pull latest containers
	@docker compose pull

readme: ## pull latest containers
	@docker compose run --rm readme

lint: ## run super-linter
	@docker compose run --rm lint

clean: ## remove running containers, volumes & anything else
	@docker compose rm --force -v

# Utility methods
## Help: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

help: ## display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
.PHONY: help all clean test
