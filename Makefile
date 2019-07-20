define do_terraform
  docker-compose run --rm terraform $1
endef

version:
	@$(call do_terraform,version)
