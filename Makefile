install:
	install -Dm755 buildpkg.sh $(DESTDIR)/usr/bin/yoink-build
	install -Dm755 INSTALL $(DESTDIR)/etc/yoink/INSTALL.sample
	@echo ""
	@echo "Done.  Package is now in the home folder."
