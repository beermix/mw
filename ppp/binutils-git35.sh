#!/bin/bash
set -e
url=https://github.com/bminor/binutils-gdb.git
package=binutils
tag=binutils-2_35_1
branch=binutils-2_35-branch
out=$package-stable-35_1branch.patch
repo=$package-gdb

# use filterdiff, etc to exclude bad chunks from diff
filter() {
	cat
}

if [ ! -d $repo ]; then
	git clone --bare $url -b $branch $repo
fi

cd $repo
	git fetch origin +$branch:$branch +refs/tags/$tag:refs/tags/$tag
	git log -p --reverse $tag..$branch | filter > ../$out.tmp
cd ..

if cmp -s $out{,.tmp}; then
	echo >&2 "No new diffs..."
	rm -f $out.tmp
	exit 0
fi
mv -f $out{.tmp,}
