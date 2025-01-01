# Aapanel Updater

## **Important Note**  
The CentOS 7 version is **deprecated**.  
Please use the **Ubuntu 22.04** version instead.  

---

## Installation  

This project consists of 3 submodules:  
1. `aapanel` and `aapanel-preinstalled` for CentOS 7 (legacy).  
2. `aapanel-ubuntu-22-04-sysbox` for Ubuntu 22.04.  

These submodules function independently. To download all of them, run:  
```bash
git clone --recursive https://github.com/antonio24073/aapanel-updater.git
cd aapanel-updater
```

---

## Modules Overview  

- **Main `docker-compose.yml`**:  
  Creates a cron job to build updated images, addressing slow container startup issues.  

- **`aapanel-ubuntu-22-04-sysbox`**:  
  Contain installations of Aapanel with Watchtower for automatic image updates on running containers.  

- **`aapanel` and `aapanel-preinstalled`**:  
  Legacy images with the old Centos 7

You can use the submodules independently, as they are designed to be self-contained. However, I will continue updating them on my server for as long as possible.  

---

## Instructions  

These instructions are specific to the `aapanel-updater` project. For detailed guidance on each submodule, refer to the `README.md` files inside their respective folders.  

To run the project, execute the following commands in the root folder:  
```bash
make up
make rm
```

---

## Creating Your Own Image  

To build a custom image, follow these steps:  
1. Rename and configure the example files (`.env` and `commands.sh`).  
2. Update the image names and repositories in the `docker-compose.yml` files.  

---

## Additional Sources  
- [Docker Hub Repository](https://hub.docker.com/r/antonio24073/aapanel)  
