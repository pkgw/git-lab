#! /bin/bash

# Puppeteer, the system used by Decktape to drive the underlying browser, has
# layout bugs that cause image placement to get weird if the page size passed
# to Decktape is too small. Hence the default `-s 1600x1200` below. Ref:
# https://github.com/astefanutti/decktape/issues/127 .
#
# But increasing the size then leads to problems with an insufficiently large
# shared-memory segment inside the Decktape Docker container. Fixed with the
# `--shm-size` argument. Ref:
# https://github.com/astefanutti/decktape/issues/105 (maybe).
#
# To gather debugging information from Puppeteer, add `-e DEBUG="puppeteer:*"`
# to the Docker command line.

exec docker run \
     --rm \
     --net=host \
     -v $(pwd):/slides:rw,Z \
     --shm-size 2G \
     astefanutti/decktape:2.8.5 \
     -s 1600x1200 \
     reveal http://localhost:8080/index.html export.pdf
