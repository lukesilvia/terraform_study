define do_terraform
  docker-compose run --rm terraform $1
endef

version:
	@$(call do_terraform,version)

init:
	@$(call do_terraform,init)

plan:
	@$(call do_terraform,plan)

apply:
	@$(call do_terraform,apply)
