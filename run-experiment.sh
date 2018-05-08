#!/bin/sh

NCPU=$(grep -c '^processor' /proc/cpuinfo)

parallel -j$NCPU -a packages.txt --bar --joblog experiment.log --timeout 300 ./extract-tests.R