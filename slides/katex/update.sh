#! /bin/sh
#
# Go to https://github.com/Khan/KaTeX/releases to see what releases are
# available.

version="0.3.0"

fetch="curl -sL"
url="https://github.com/Khan/KaTeX/releases/download/v$version/katex.tar.gz"
files="
katex.min.css
katex.min.js
fonts
"
relfontsdir="../assets/katex-fonts"

if [ ! -d $(dirname $relfontsdir) ] ; then
    echo >&2 "$(dirname $relfontsdir) should exist but doesn't"
    exit 1
fi

set -e

rm -rf katex/ $relfontsdir
rm -f $files

$fetch "$url" |tar xz

for f in $files ; do
    mv katex/$f .
done

rm -rf katex/

mv fonts $relfontsdir
ln -s $relfontsdir fonts
