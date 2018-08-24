![Project Status: Active][Project Status Image]

UkTools - Upgrade/Purge
===========================

<img align="right" src="https://www.kernel.org/theme/images/logos/tux.png" alt="Linux Logo" title="Tux">

**Upgrade**
* It provides to upgrade linux kernel to latest stable version for Ubuntu/Mint
and derivatives. Based on [this archive](http://kernel.ubuntu.com/~kernel-ppa/mainline/)

**Purge**
* It removes old linux kernel images/headers in machine for Ubuntu/Mint and derivatives.

**Auto Run** can be enabled/disabled in setup<br>
* If enabled, upgrade will be done automatically by cronjob each 2hours.

**Incompatibilities**
* Linux Tools (perf, usb over ether, kbuild)
* Canonical Livepatch

-----------------------------------------

# One-line Install
**Only use for testing, prefer normal setup for regular use**

```
cd /usr/src && \
sudo wget https://github.com/usbkey9/uktools/archive/master.tar.gz && \
sudo tar -xvf master.tar.gz && \
sudo rm -fr master.tar.gz && \
cd uktools-master && \
sudo chown ${USER:=$(id -run)}:$USER ../uktools-master && \
./src/upgrade --simple
```

# Normal Setup

* Download

```
git clone https://github.com/usbkey9/uktools && cd uktools
```

* Run the Makefile

```
make
```
It'll install necessary files and run setup

### Optionnal

* Now you can call the script whereever you are

```
uktools-upgrade
uktools-purge
```

* You can re-run setup script by
```
./setup
```

* Logs are available with
```
cat /var/log/ukt.log
```

* Uninstall (cron job included)
```
make uninstall
```

## TODO

### Bash Unit Test
#### Qemu/KVM are the container tools for testing

* Test MakeFile

##### Upgrade
* check install of each kernel's versions
* check message of the day with ssh connection just after install
* check call parameters
* check "no need to upgrade" by running script two times in a row

##### Purge
* check if script purge right versions and keep only 3 ones
* check if script keep the very last version of base kernel
* eg with Ubuntu 18.04 : 
	- 4.15.0-20.21 base kernel [to delete]
	- 4.15.0.20.23 updated base kernel [to keep]
	- 4.16.5 updated kernel from script [to delete]
	- 4.16.6 updated kernel from script [to keep]
	- 4.16.7 updated kernel from script [to keep]

### Any other contributions is welcome (trad, display, etc)

[Project Status Image]: https://img.shields.io/badge/project-active-green.svg "Project Status: Active"
