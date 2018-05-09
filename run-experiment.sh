#!/bin/sh

docker exec \
       -ti \
       -u rstudio \
       -w /home/rstudio \
       issta18-genthat \
       parallel -j4 -a packages.txt --bar --joblog experiment.log --timeout 300 ./extract-tests.R
