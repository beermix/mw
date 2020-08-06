GCCGIT = ~/gcc.git
GCCVER = 10.2.0

GCCTAG = releases/gcc-$(GCCVER)
GCCBRANCH = releases/gcc-10

update:
	git -C $(GCCGIT) remote update -p
	git -C $(GCCGIT) rev-parse --verify --quiet refs/tags/$(GCCTAG) > /dev/null
	git -C $(GCCGIT) rev-parse --verify --quiet $(GCCBRANCH) > /dev/null
	git -C $(GCCGIT) diff $(GCCTAG)..$(GCCBRANCH) -- \* ':!*/DATESTAMP' | filterdiff -X exclude-testsuite > new.patch~
	git show HEAD:gcc-stable-branch.patch | sed -n '/^diff --git/,$$p' > current.patch~
	! diff current.patch~ new.patch~ > /dev/null
	git -C $(GCCGIT) shortlog $(GCCTAG)..$(GCCBRANCH) > gcc-stable-branch.patch
	cat new.patch~ >> gcc-stable-branch.patch
	rm -f *.patch~
	git -C $(GCCGIT) show $(GCCBRANCH):gcc/DATESTAMP > DATESTAMP
	git -C $(GCCGIT) describe --abbrev=10 $(GCCBRANCH) > REVISION


#	test -d ~/binutils-gdb || git clone http://sourceware.org/git/binutils-gdb.git ~/binutils-gdb
#	( \
#		cd ~/git/binutils-gdb ; \
#		git remote update -p > /dev/null 2>&1 ; \
#		git diff binutils-2_35..origin/binutils-2_35-branch | filterdiff --exclude="*/bfd/version.h"; \
#	) > binutils-stable-branch.patch
#	git diff --exit-code binutils-stable-branch.patch
