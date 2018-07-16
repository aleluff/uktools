DESTDIR = 
PREFIX = /usr/sbin
MY_DIR := $(realpath ./)

.PHONY: all
all: install

.PHONY: install
install: ukupgrade ukpurge
	@echo Creating the directories if neccessary
	@mkdir -p $(DESTDIR)$(PREFIX)
	@echo Linking profile.d file for reboot message
	@sudo ln -s $(MY_DIR)/profile /etc/update-motd.d/85-ukupgrade
	@echo Linking files to global sbin directory
	@sudo ln -s $(MY_DIR)/ukupgrade $(DESTDIR)$(PREFIX)/uktools-upgrade
	@sudo ln -s $(MY_DIR)/ukpurge $(DESTDIR)$(PREFIX)/uktools-purge
	@$(MY_DIR)/setup

.PHONY: uninstall
uninstall:
	@echo Removing uktools- links
	@sudo rm -f $(DESTDIR)$(PREFIX)/uktools-*
	@echo Removing profile.d file
	@sudo rm -f /etc/update-motd.d/85-ukupgrade
	@echo Removing config file
	@sudo rm -f $(MY_DIR)/uku.cfg
	@echo Removing other stuff
	@sudo $(MY_DIR)/setup -unin

.PHONY: upgrade
upgrade: uninstall install
