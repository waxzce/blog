all: build

build: site
	./site build

site: site.hs 
	ghc --make site.hs -package-db cabal-dev/packages-7.6.3.conf
	./site clean

preview: site
	./site preview

clean: site
	./site clean

mrproper: clean
	rm site
	rm site.hi
	rm site.o

publish: build
	git stash save
	git checkout publish || git checkout --orphan publish
	find . -maxdepth 1 ! -name '.' ! -name '.git*' ! -name '_site' -exec rm -rf {} +
	find _site -maxdepth 1 -exec mv {} . \;
	rmdir _site
	git add -A && git commit -m "Publish" || true
	git push -f git+ssh://git@push.clever-cloud.com/app_a4605b24-15c3-48ed-912b-23367abe920c.git \
	publish:master
	git checkout master
	git clean -fdx
	git stash pop || true