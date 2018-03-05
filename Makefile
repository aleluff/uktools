DESTDIR = 
PREFIX = /usr/sbin
MY_DIR := $(realpath ./)

.PHONY: all
all: make-exec install

.PHONY: install
install: ukupgrade ukpurge
	@echo Creating the directories if neccessary
	@mkdir -p     $(DESTDIR)$(PREFIX)
	@echo Linking profile.d file for reboot message
	@ln -s $(MY_DIR)/profile	/etc/profile.d/ukupgrade.sh
	@echo Linking files to global sbin directory
	@ln -s $(MY_DIR)/ukupgrade	$(DESTDIR)$(PREFIX)/do-kernel-upgrade
	@ln -s $(MY_DIR)/ukpurge  	$(DESTDIR)$(PREFIX)/do-kernel-purge
	@do-kernel-upgrade

.PHONY: make-exec
make-exec: ukupgrade ukpurge
	@echo adding x to files
	@chmod +x ukupgrade
	@chmod +x ukpurge

.PHONY: uninstall
uninstall:
	@echo Removing do-kernel- links
	@rm -f $(DESTDIR)$(PREFIX)/do-kernel-*
	@echo Removing profile.d file
	@rm -f /etc/profile.d/ukupgrade.sh

.PHONY: upgrade
upgrade: uninstall make-exec install
