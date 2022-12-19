#!/usr/bin/make

# ------------------------------------------------ #
# Note: this file originates in template-terraform #
# ------------------------------------------------ #

pull: ## pull latest containers
	@docker compose pull

lint: ## run mega-linter
	@docker compose run --rm lint

init: ## init terraform & install plugins
	@docker compose run --rm terraform init

refresh: ## refresh state
	@docker compose run --rm terraform refresh

format: ## clean up terraform file
	@docker compose run --rm terraform fmt
	@docker compose run --rm terraform fmt module

validate: ## validate your changes
	@docker compose run --rm terraform validate

unlock: ## force unlock remote state
	@docker compose run --rm terraform force-unlock ahmadnassri/github

plan: ## show terraform plan
	@docker compose run --rm terraform plan -refresh=false -lock=false

apply: ## apply terraform changes
	@docker compose run --rm terraform apply

shell: ## start the container shell
	@docker compose run --rm --entrypoint /bin/sh terraform

clean: ## remove running containers, volumes & anything else
	@docker compose rm --stop --volumes --force

# Utility methods
## Help: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

help: ## display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help
.PHONY: help all clean test
