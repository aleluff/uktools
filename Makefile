DESTDIR = 
PREFIX = /usr/bin

.PHONY: all
all: make-exec install

.PHONY: install
install: ukupgrade ukpurge
	@echo Creating the directories if neccessary
	@mkdir -p     $(DESTDIR)$(PREFIX)
	@echo Copying files to global bin directory
	@cp ukupgrade $(DESTDIR)$(PREFIX)/do-kernel-upgrade
	@cp ukpurge   $(DESTDIR)$(PREFIX)/do-kernel-purge

.PHONY: make-exec
make-exec: ukupgrade ukpurge
	@echo adding x to files
	@chmod +x ukupgrade
	@chmod +x ukpurge

.PHONY: uninstall
uninstall:
	@echo Removing do-kernel- binaries
	@rm -f $(DESTDIR)$(PREFIX)/do-kernel-*

.PHONY: upgrade
upgrade: uninstall make-exec install
