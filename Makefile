clean:
	@find . -iname '*.orig' -delete 
	@find . -iname '*.pyc' -delete
	@find . -iname '*~' -delete
	@rm -rf dist/
	@rm -rf python-wtf.egg-info
	@rm -f requirements_update.out

distclean:
	@git clean -f

#publish:
#	@ipython register.py
