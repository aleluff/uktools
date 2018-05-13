![Project Status: Active][Project Status Image]

UKTools - ukupgrade/ukpurge
===========================

<img align="right" src="https://www.kernel.org/theme/images/logos/tux.png" alt="Linux Logo" title="Tux">

**ukupgrade** stands for "*Ubuntu Kernel Upgrade*"   

**Purpose**:
It provides us to upgrade linux kernel to latest stable version for Ubuntu/Mint
and derivatives. Based on [this archive](http://kernel.ubuntu.com/~kernel-ppa/mainline/)

**ukpurge** stands for "*Ubuntu Kernel Purge*"

**Purpose**:
It provide to us remove old linux kernel images/headers in machine for Ubuntu/
Mint and derivatives. Non-Based

**Auto Run**:
If you set auto run in setup, upgrade will be do automatically by cronjob each 5hours.

<br><br>
**Code Auto Update:**
[Disable by default], updatable in setup<br>
This repo implement auto-update, which means that it'll automatically get last available github's version when using "normal setup"

You can implement this feature in your project with [https://github.com/usbkey9/autoup/](https://github.com/usbkey9/autoup/)

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
./ukupgrade --simple
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


* Now you can call the script whereever you are

```
do-kernel-upgrade
do-kernel-purge
```

* Optionnal

You can re-run setup script by:
```
./setup
```

* Logs are available with:
```
cat /var/log/uku.log
```

* Uninstall (cron job included):
```
make uninstall
```

## TODO (Tests)
### Qemu/KVM are the tools for testing

* Test MakeFile

#### Ukuprage
* check install of each kernel's versions
* check message of the day with ssh connection just after install
* check call parameters
* check "no need to upgrade" by running script two times in a row

#### Ukpurge
* check if script purge right versions and keep only 3 ones
* check if script keep the very last version of base kernel
* eg with Ubuntu 18.04 : 
  - 4.15.0-20.21 base kernel [to delete]
  - 4.15.0.20.23 updated base kernel [to keep]
  - 4.16.5 updated kernel from script [to delete]
  - 4.16.6 updated kernel from script [to keep]
  - 4.16.7 updated kernel from script [to keep]
  
#### AutoUp
* check if auto-update works well when current repo is outdated by running normal script (setup, ukupgrade, ukpurge) which update to last gihub version

### Any other contributions is welcome (trad, display, etc)

## Author's

[Usb Key](https://github.com/usbkey9) - current maintainer and setup, cronjob and motd author

| email | usbkey9@gmail.com |
|:-:|:-:|

[Mustafa Hasturk](https://www.linkedin.com/in/muhasturk) - ukupgrade author

| homepage | [mustafahasturk.com](http://mustafahasturk.com "Official Web Site") |
|:-:|:-:|
| email | hi@mustafahasturk.com |

[Caio Oliveira](https://plus.google.com/+CaioOBR) - ukpurge author

| email | caiooliveirafarias0@gmail.com |
|:-:|:-:|

[Christoph Kepler](https://github.com/MarauderXtreme) - developer

| homepage | [Kepler International](https://kepler.international/ "Kepler International") |
|:-:|:-:|
| email | development@kepler.international |


[Project Status Image]: https://img.shields.io/badge/project-active-green.svg "Project Status: Active"
