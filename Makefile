DESTDIR = 
PREFIX = /usr/sbin
MY_DIR := $(realpath ./)

.PHONY: all
all: install

.PHONY: install
install: ukupgrade ukpurge
	@echo Creating the directories if neccessary
	@mkdir -p     $(DESTDIR)$(PREFIX)
	@echo Linking profile.d file for reboot message
	@ln -s $(MY_DIR)/profile	/etc/update-motd.d/85-ukupgrade
	@echo Linking files to global sbin directory
	@ln -s $(MY_DIR)/ukupgrade	$(DESTDIR)$(PREFIX)/do-kernel-upgrade
	@ln -s $(MY_DIR)/ukpurge  	$(DESTDIR)$(PREFIX)/do-kernel-purge
	@$(MY_DIR)/setup

.PHONY: uninstall
uninstall:
	@echo Removing do-kernel- links
	@rm -f $(DESTDIR)$(PREFIX)/do-kernel-*
	@echo Removing profile.d file
	@rm -f /etc/update-motd.d/85-ukupgrade
	@echo Removing config file
	@rm -f $(MY_DIR)/uku.cfg

.PHONY: upgrade
upgrade: uninstall install
