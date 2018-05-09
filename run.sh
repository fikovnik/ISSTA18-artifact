#!/bin/sh

docker run \
       --rm \
       --name issta18-genthat \
       -p 8787:8787 \
       -v $(pwd):/home/rstudio \
       -e ROOT=TRUE \
       -e PASSWORD=rstudio \
       prlprg/issta18-genthat
