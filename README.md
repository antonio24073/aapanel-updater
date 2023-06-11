# aapanel-updater

# Install 

This project is made with 2 submodules: `aapanel` and `aapanel-preinstalled` (they are the two project folders). They work separately. Download them all with:

```
git clone --recursive https://github.com/antonio24073/aapanel-updater.git

```

# Modules

- The main `docker-compose.yml` create a cron that build the new images with updates. This help fix to slow start container. 
- The `aapanel` folder contains a clean install for aapanel with watchtower (get the new images with running containers). 
- The `aapanel-preinstalled` is a structure to your own commited aapanel image after install the apps.


----------------------

# Donations

Help keep projects free: <a href="https://www.paypal.com/donate/?business=X3W3QTHS7BDW4&no_recurring=0&currency_code=USD" >Click Here</a>
