GCCGIT = ~/gcc.git
GCCVER = 10.2.0

GCCTAG = releases/gcc-$(GCCVER)
GCCBRANCH = releases/gcc-10

update:
	git -C $(GCCGIT) fetch origin +$(GCCBRANCH):$(GCCBRANCH) +refs/tags/$(GCCTAG):refs/tags/$(GCCTAG)
	git -C $(GCCGIT) diff $(GCCTAG)..$(GCCBRANCH) -- \* ':!*/DATESTAMP' > new.patch~
	git show HEAD:gcc-stable-branch.patch | sed -n '/^diff --git/,$$p' > current.patch~
	! diff current.patch~ new.patch~ > /dev/null
	git -C $(GCCGIT) shortlog $(GCCTAG)..$(GCCBRANCH) > gcc-stable-branch.patch
	cat new.patch~ >> gcc-stable-branch.patch
	rm -f *.patch~
	mv gcc-stable-branch.patch 000-gcc10-stable-branch.patch
	mv -f 000-gcc10-stable-branch.patch /home/User/mw-my/mingw-w64-gcc/000-gcc10-stable-branch.patch

	test -d ~/binutils-gdb || git clone http://sourceware.org/git/binutils-gdb.git ~/binutils-gdb
	( \
		cd ~/binutils-gdb ; \
		git remote update -p > /dev/null 2>&1 ; \
		git diff binutils-2_36_1..origin/binutils-2_36-branch | filterdiff --exclude="*/bfd/version.h"; \
	) > binutils-stable-branch.patch
	git diff --exit-code binutils-stable-branch.patch
	mv binutils-stable-branch.patch 000-binutils35-stable-branch.patch
	mv -f 000-binutils35-stable-branch.patch /home/User/mw-my/mingw-w64-binutils/000-binutils36_1-stable-branch.patch
