# What is Terraform?

[Terraform](https://github.com/hashicorp/terraform) is an IaC (Infrastructure as Code) tool developed by Hashicorp. It is declarative in nature, so we just have to define the desired configuration of our infrastructure and terraform will do the heavylifting of determining what changes need to be made for it to reach that state.

# Files & Folders

- `.terraform`: Directory containing the files for required provider plugins defined in `main.tf`.

- `.terraform.lock.hcl`: Much like `package-lock.json` or `go.sum`.

- `terraform.tfstate`: File containing the current state of the terraform project.

# Terraform Commands

- `terraform init`: To initialize a new project, either a fresh one or one pulled from version control. This will setup the `.terraform` directory and installed required provider plugins. All the other commands for terraform can only be run after this command. **This command can be run multiple times unlike `git init`.

- `terraform fmt`: Linting command for `.tf` files.

- `terraform validate`: Checks configurations - similar to `nginx -t`.

- `terraform plan`: Sort of like a dry run, presents a plan output of what changes terraform will do to the infrastructure to match it with the current configuration.

- `terraform apply`: Same output format as plan, but asks for confirmation to apply these changes. Only `yes` is accepted to apply the changes.

- `terraform destroy`: Destroys all the infrastructure managed by the current terraform project, basically everything which is present in `terraform.tfstate`.

- `terraform state`: Lists the managed resources.

- `terraform output`: Lists the outputs defined by output blocks in `outputs.tf`.
