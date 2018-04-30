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

-----------------------------------------

# One-line Install
**Only use for testing, prefer normal setup for regular use**

```
cd /usr/src && \
sudo wget https://github.com/usbkey9/uktools/archive/master.tar.gz && \
sudo tar -xvf master.tar.gz && \
sudo rm -fr master.tar.gz && \
cd uktools-master && \
sudo chown ${USER:=$(/usr/bin/id -run)}:$USER ../uktools-master && \
./ukupgrade --simple
```

# Normal Setup

* Download

```
git clone https://github.com/usbkey9/uktools && cd uktools
```

* Run the Makefile

```
sudo make
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
