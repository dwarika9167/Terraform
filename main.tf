terraform {
required_providers {
docker={
source="kreuzwerker/docker"
version = "~> 2.21.0"
}
}
}

resource "docker_image" "nginx"{
name = "nginx:latest"
keep_locally = false
}

resource "docker_container" "nginx"{
image = docker_image.nginx.latest
name = "tutorial"
ports{
internal=8080
external=8080
}

}
