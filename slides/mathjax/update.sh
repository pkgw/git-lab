#! /bin/sh

fetch="curl -sL"
url='https://github.com/mathjax/MathJax/raw/master/MathJax.js'
set -e

$fetch "$url" >MathJax.js
