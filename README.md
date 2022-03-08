# docker-image-ansible

Docker Image with Ansible installed

## How to use

You can use the Docker image directly from my registry by using `lparet/docker-image-ansible`.

Or, you can build/push your own image by editing the `docker-compose.yml` file.

## Manage Ansible Version

The Ansible version is the one in the `version.sh` file, with the variable `ANSIBLE_VERSION`.

## Build the Docker image in local

`source version.sh && docker-compose build`

## Push it to Docker registry

`source version.sh && docker-compose push`
