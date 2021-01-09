install:
	install -Dvm755 buildpkg.sh $(DESTDIR)/usr/bin/yoink-build
	install -Dvm755 INSTALL $(DESTDIR)/etc/yoink/INSTALL.sample
