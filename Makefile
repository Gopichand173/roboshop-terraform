
dev-init:
     git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

dev-apply: dev-init
	terraform apply -var-file=./environments/dev/main.tfvars

dev-destroy: dev-init
	terraform apply -var-file=./environments/dev/main.tfvars

prod-init:
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=./environments/prod/state.tfvars

prod-plan:
	terraform plan -var-file=./environments/prod/main.tfvars

prod-apply: prod-init
	terraform apply -var-file=./environments/prod/main.tfvars

dev-destroy: prod-init
	terraform apply -var-file=./environments/prod/main.tfvars