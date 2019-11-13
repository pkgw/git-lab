#! /bin/sh
#
# Go to https://github.com/hakimel/reveal.js/releases to see what releases are
# available.

version="3.0.0"

fetch="curl -sL"
url="https://github.com/hakimel/reveal.js/archive/$version.tar.gz"
files="
css/print/paper.css
css/print/pdf.css
css/reveal.css
js/reveal.js
lib/js/classList.js
lib/js/head.min.js
plugin/highlight
plugin/notes
"

set -e

rm -rf reveal.js-*

for f in $files ; do
    b=$(basename $f)
    if [ -d "$b" ] ; then
	rm -rf "$b"
    else
	rm -f "$b"
    fi
done

$fetch "$url" |tar xz

for f in $files ; do
    mv reveal.js-$version/$f .
done

rm -rf reveal.js-$version
