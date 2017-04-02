distrib: distclean mkzip clean
distclean:
	rm -f skin.estuary-noratings.zip
	@make --no-print-directory clean
clean:
	rm -rf skin.estuary-noratings
mkbuildtree:
	mkdir -p skin.estuary-noratings
	cp -r addon.xml  changelog.txt  colors/  extras/  fonts/  language/  LICENSE.txt  Makefile  media/  playlists/  resources/  themes/  xml/ skin.estuary-noratings/
mkzip: mkbuildtree
	zip -q -r skin.estuary-noratings.zip skin.estuary-noratings
