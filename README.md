# AWS Terraform Install

<div id="badges" align="center">
<img alt="GitHub milestones" src="https://img.shields.io/github/milestones/all/BenjaminBurton/aws-terraform-install?style=for-the-badge" width="100">
</div>

:wave: :wave: :wave: :wave: :wave:

# Documentation

My Personal Documentation 

## Intro for project setup

Steps Involved:

- ✅ Install using homebrew
- ✅ Update Homebrew
- ✅ Upgrade Homebrew to run the latest version of Terraform
- ✅ Verify the installation 
- ✅ Enable tab completion
- ✅ Install the autocomplete package 
- ✅ Download Docker Desktop for Mac
- ✅ Start Docker Desktop
- ✅ Create Directory for files
- ✅ Change Directory (cd) into the directory 
- ✅ create main.tf file 
- ✅ nano into the file 
- ✅ Place configuration code inside file
- ✅ Initialize the project 
- ✅ Provision the NGINX server container with apply
- ✅ Confirm with yes
- ✅ Verify NGINX container by visiting localhost:8000 or run Docker ps in terminal
- ✅ to stop and destroy the container run terraform destroy in terminal
- ✅ These are the steps to provision and destroy a NGINX webserver with Terraform


# Initial Terraform Configuration file inside the main.tf file

```js
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}


```