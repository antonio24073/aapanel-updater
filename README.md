# aapanel-updater

## IMPORTANT

There are two old versions for centos 7. The new versions are below:

https://github.com/antonio24073/aapanel-ubuntu-24-04
https://github.com/antonio24073/aapanel-ubuntu-24-04-preinstalled


## Install 

This project is made with 2 submodules: `aapanel` and `aapanel-preinstalled` (they are the two project folders). They work separately. Download them all with:

```
git clone --recursive https://github.com/antonio24073/aapanel-updater.git
cd aapanel-updater
```

## Modules

- The main `docker-compose.yml` create a cron that build the new images with updates. This help fix to slow start container. 
- The `aapanel` folder contains a clean install for aapanel with watchtower (to get the new images with running containers). 
- The `aapanel-preinstalled` is a structure to your own commited aapanel image after install the apps.

You can use the aapanel submodules separetelly because I'm going to put it to update on my server. But I don't know until when.


## Instructions

This instruction is for `aapanel-updater` only. There are another `README.md` inside each subfolder.

To run do this command in the project root folder:

```
docker compose up -d --build
```

To stop:

```
docker compose down
```

## Own image

If do you want to make your own image, do these steps:
- Rename and configure your `.env` file.
- Change your image names and repositories in `docker-compose.yml` files 

## Read this:

https://hub.docker.com/r/antonio24073/aapanel

