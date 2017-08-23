![Project Status: Active][Project Status Image]

UKTools - ukupgrade/ukpurge
===========================

<img align="right" src="https://www.kernel.org/theme/images/logos/tux.png" alt="Linux Logo" title="Tux">

**ukupgrade** stands for "*Ubuntu Kernel Upgrade*"   

**Purpose**: It provides us to upgrade linux kernel to latest stable version for Ubuntu/Mint and derivatives. Based on [this archive](http://kernel.ubuntu.com/~kernel-ppa/mainline/)

**ukpurge** stands for "*Ubuntu Kernel Purge*"

**Purpose**: It provide to us remove old linux kernel images/headers in machine for Ubuntu/Mint and derivatives. Non-Based

-----------------------------------------

## Usages

* Download latest script (ukupgrade/ukpurge)

```
curl https://raw.githubusercontent.com/TeamVee-B/uktools/master/ukupgrade > ukupgrade
curl https://raw.githubusercontent.com/TeamVee-B/uktools/master/ukpurge > ukpurge
```

* Call the script
```
./ukupgrade
./ukpurge
```

### In order to call script as bash commannd

* Run
```
sudo mv ./ukupgrade /usr/bin/do-kernel-upgrade
sudo mv ./ukpurge /usr/bin/do-kernel-purge
```
* Add executable permission
```
sudo chmod +x /usr/bin/do-kernel-upgrade
sudo chmod +x /usr/bin/do-kernel-purge
```
* Now you can call the script whereever you are
```
do-kernel-upgrade
do-kernel-purge
```

### Author's
[Mustafa Hasturk](https://www.linkedin.com/in/muhasturk) - ukupgrade author

|   homepage	|   [mustafahasturk.com](http://mustafahasturk.com "Official Web Site")   	|
|:-:	|:-:	|
|   email	|   hi@mustafahasturk.com	|

[Caio Oliveira](https://plus.google.com/+CaioOBR) - ukpurge author

|   email	|   caiooliveirafarias0@gmail.com	|
|:-:	|:-:	|

[Christoph Kepler](https://github.com/MarauderXtreme) - Current Maintainer and Developer
|   email |  development@kepler.international |
|:-:	|:-:	|

[Project Status Image]: https://img.shields.io/badge/project-active-green.svg "Project Status: Active"

