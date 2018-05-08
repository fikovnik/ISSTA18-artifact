#!/bin/sh

docker build \
       --rm \
       --build-arg REPO=https://mirrors.nic.cz/R \
       -t prlprg/issta18-genthat \
       .
