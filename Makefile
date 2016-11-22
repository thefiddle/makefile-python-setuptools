PYTHON	?= python
SETUP	:= setup.py

all:
        : # do nothing

install:
	$(PYTHON) $(SETUP)  install --root $(DESTDIR)

clean:
	$(PYTHON) $(SETUP)  clean --all


uninstall: clean
	-rm -rf build dist *.egg-info
	# -rm -f $(DESTDIR)$(prefix)/bin/hello

.PHONY: all install clean uninstall
