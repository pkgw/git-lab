#! /bin/bash
exec docker run \
     --rm \
     --net=host \
     -v $(pwd):/slides:rw,Z \
     astefanutti/decktape \
     -s 1280x720 \
     reveal http://localhost:23232/slides.html?pdf-print export.pdf
