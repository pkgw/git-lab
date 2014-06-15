#! /bin/sh
#
# Note that our procedure only extracts the bits that we want from the
# tarball.

fetch="curl -sL"
url='https://github.com/hakimel/reveal.js/archive/master.tar.gz'
subdirs='plugin lib js css'
set -e

rm -rf $subdirs
$fetch "$url" |tar xz
for d in $subdirs ; do
    mv reveal.js-master/$d .
done
rm -rf reveal.js-master
