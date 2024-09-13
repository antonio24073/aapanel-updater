# aapanel-updater

## IMPORTANT

Centos 7 version is DEPRECATED. 

Instead, use Ubuntu 22.04 version.


## Install 

This project is made with 3 submodules: 

- `aapanel` and `aapanel-preinstalled` to Centos 7 
- `aapanel-ubuntu-22-04-sysbox`  

(they are project folders). 

They work separately. Download them all with:

```
git clone --recursive https://github.com/antonio24073/aapanel-updater.git
cd aapanel-updater
```

## Modules

- The main `docker-compose.yml` create a cron that build the new images with updates. This help fix to slow start container. 
- The `aapanel`, `aapanel-ubuntu-20-04-sysbox` and `aapanel-ubuntu-22-04-sysbox` folder contains a clean install for aapanel with watchtower (to get the new images with running containers). 
- The `aapanel-preinstalled` is a structure to your own commited aapanel image after install the apps.

You can use the aapanel submodules separetelly because I'm going to put it to update on my server. But I don't know until when.


## Instructions

This instruction is for `aapanel-updater` only. There are another `README.md` inside each subfolder.

To run do this command in the project root folder:

```
make up
make rm
```

## Own image

If do you want to make your own image, do these steps:
- Rename and configure your `.env` file.
- Change your image names and repositories in `docker-compose.yml` files 

## Read this:

https://hub.docker.com/r/antonio24073/aapanel

docker compose up -d --build
