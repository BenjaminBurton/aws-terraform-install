#!/bin/sh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew update
brew upgrade hashicorp/tap/terraform
touch ~/.bashrc
terraform -install-autocomplete
open -a Docker
cd config
terraform init
terraform apply