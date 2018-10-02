![Project Status: Active][Project Status Image]

UkTools - Upgrade/Purge
===========================

<img align="right" src="https://www.kernel.org/theme/images/logos/tux.png" alt="Linux Logo" title="Tux">

####Upgrade
* It provides to upgrade Linux kernel to latest version for Ubuntu/Mint
and derivatives. 

#####3 kernel version are available

| Version          | Stability | Features & Performance | Security  | Compatibility |
|-------------------|:---------:|:----------------------:|:---------:|:-------------:|
| Release Candidate | Low       | Many                   | Very High | Low           |
| Testing           | Normal    | Some                   | High      | Normal        |
| Stable            | High      | Few                    | Low       | Very High     |
Based on [this archive](http://kernel.ubuntu.com/~kernel-ppa/mainline/)

####Purge
* It removes old Linux kernel images/headers in machine for Ubuntu/Mint and derivatives.

**Auto Run** can be enabled/disabled in setup<br>
* If enabled, upgrade will be done automatically by cronjob each 2hours.

**Incompatibilities** with RC and testing version
* Linux Tools (perf, usb over ether, kbuild)
* Canonical Livepatch
* Some misconfigured packages (eg rtl8812au-dkms/4.3.8)
* Obviously all packages not compatible with very last versions of kernel (eg sysdig)

-----------------------------------------

# One-line Install
#####Only use for testing, prefer normal setup for regular use
######It'll get Testing kernel
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
sudo uktools-upgrade
sudo uktools-purge
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
* check if script keep the very last version of minor kernel
* eg with Ubuntu 18.04 :

| Versions   | Keep |
|------------|:----:|
| 4.13.0-39  |✗|
| 4.13.0-41  |✓|
| 4.15.0-32  |✗|
| 4.15.0.34  |✓|
| 4.16.5     |✗|
| 4.16.6     |✗|
| 4.16.7     |✓|

### Any other contributions is welcome (trad, display, etc)

[Project Status Image]: https://img.shields.io/badge/project-active-green.svg "Project Status: Active"
