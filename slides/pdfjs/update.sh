#! /bin/sh

# You can recover the ID of the pdfjs Git commit from which these files were
# built by looking at the `PDFJS.build` variable at the top of the downloaded
# pdf.js.
#
# We strip trailing whitespace to make Git happy if I'm using the pre-commit
# hook.

fetch="curl -s"
root='http://mozilla.github.io/pdf.js'
set -e

$fetch "$root/build/pdf.js" |sed -e 's/ *$//' >pdf.js
$fetch "$root/build/pdf.worker.js" |sed -e 's/ *$//' >pdf.worker.js
$fetch "$root/web/compatibility.js" |sed -e 's/ *$//' >compatibility.js
