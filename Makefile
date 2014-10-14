clean:
	@find . -iname '*.orig' -delete 
	@find . -iname '*.pyc' -delete
	@find . -iname '*~' -delete
	@rm -rf dist/
	@rm -rf python-wtf.egg-info
	@rm -f requirements_update.out

distclean:
	@git clean -f

install-deps:
	echo "Installing ubuntu packages..."
	xargs -a ./apt-packages.txt -IPACKAGE sudo apt-get install PACKAGE
	echo "Retrieving submodules..."
	git submodule init
	git submodule update
	#echo "Building libgit2..."
	# FIXME: Do this, but only if we need to
	echo "Installing Python dependencies"
	pip install -r requirements.txt

#publish:
#	@ipython register.py
