DESTDIR = 
PREFIX = /usr/sbin
SRC_DIR := $(realpath ./src)
MOTD_PATH = /etc/update-motd.d/85-upgrade


.PHONY: all
all: install

.PHONY: install
install:
	@echo Creating the directories if neccessary
	@mkdir -p $(DESTDIR)$(PREFIX)
	@echo Linking profile.d file for reboot message
	@sudo ln -s $(SRC_DIR)/profile $(MOTD_PATH)
	@echo Linking files to global sbin directory
	@sudo ln -s $(SRC_DIR)/upgrade $(DESTDIR)$(PREFIX)/uktools-upgrade
	@sudo ln -s $(SRC_DIR)/purge $(DESTDIR)$(PREFIX)/uktools-purge
	@$(SRC_DIR)/setup

.PHONY: uninstall
uninstall:
	@echo Removing uktools- links
	@sudo rm -f $(DESTDIR)$(PREFIX)/uktools-*
	@echo Removing profile.d file
	@sudo rm -f $(MOTD_PATH)
	@echo Removing config file
	@sudo rm -f $(SRC_DIR)/ukt.cfg
	@echo Removing other stuff
	@sudo $(SRC_DIR)/setup -unin

.PHONY: upgrade
upgrade: uninstall install
