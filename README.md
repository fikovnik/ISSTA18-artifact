---
title: "ISSTA Artifact"
authors: "Filip Krikava & Jan Vitek"
output:
  html_document:
    highlight: tango
    keep_md: yes
    toc: yes
    toc_depth: 2
    toc_float: yes
---





## Artifact description

This is the artifact for the paper __Tests from Traces: Automated Unit Test
Generation for R__ published at ISSTA 2018.

## Prerequisites

- git
- [docker](https://www.docker.com/community-edition)
- about 8GB of disk space

## Running the artifact

Clone the repository [fikovnik/ISSTA18-artifact](https://github.com/fikovnik/ISSTA18-artifact):

```sh
git clone https://github.com/fikovnik/ISSTA18-artifact
```

The artifact is provided as a docker image `prlprg/issta18-genthat`.
The image contains R 3.4 with a web version of Rstudio and a set of sample packages.
To run the docker image, please run:

```sh
./run.sh
```

from the cloned repository.

This shall download the already prebuilt docker image from [docker hub](https://hub.docker.com/r/fikovnik/issta18-artifact/).
If you prefer to build your own, please follow the instructions at the end of this document.
If you ran the docker image manually, please make sure its name is `issta18-genthat`.

The artifact is composed of two parts:

- Genthat Overview
- CRAN Experiment

The first part corresponds to the Section 3 of the paper where we introduce the tool.
The second part reproduces the experiment that we used to evaluate the tool in Section 4.
Both require the docker image to be run.

### Genthat Overview

This part essentially explains how genthat works and reproduces all the examples that are in the paper.
There are two ways to run it:

1. Interactively via Rstudio that shall be available on [http://localhost:8787](http://localhost:8787).
   The username is `rstudio` and the password is `rstudio`.
   In the Rstudio application, please open the `overview.Rmd`.
   Now you can either run the code _chunk-by-chunk_ or just knit the whole document by pressing Ctrl+Alt+K (Command+Shift+K on OSX). 
   Knitted document in HTML is already provided in the repository---[`overview.html`](http://localhost:8787/files/overview.html).
   
2. Simply knit the whole document by running from the cloned repository:
```sh
docker exec -u rstudio -w /home/rstudio issta18-genthat Rscript -e 'rmarkdown::render("overview.Rmd")'
```
and then open the [`overview.html`](http://localhost:8787/files/overview.html).

### CRAN experiment (Section 4)

The Section 4 presents an experiment that runs genthat on 1547 [CRAN](https://cran.r-project.org/) packages.
In this artifact, we present the same one, with the difference that only 858 packages are selected.
The reason is that tracing, as indicated in the paper, takes a long time to run.
These packages represent all the original ones for which tracing took less than 2 minutes.
Running the original package set took **1d 18h** on two virtual nodes with 60GB RAM and 16 CPU at 2.2GHz.
On an average laptop or desktop, it might take much more.

This experiment is composed in a way that gives some flexibility as how much time one wants to devote to the reproduction.
We have created the following package files (package name per line) with different sizes:

- `packages-100.txt` ~ 30min
- `packages-200.txt` ~ 1h
- `packages-400.txt` ~ 2h
- `packages-all.txt` ~ 4h

which simply restricts the selection of packages to consider in the experiment.
Each shall run roughly twice the time its predecessor (measured on i7 laptop with 16GB of RAM).
The larger the set is the closer to the paper value one gets.
The experiment can also be run iteratively, each time adding more packages.
It does not rerun the package for which it has produced data.

By default the experiment is set to run all packages.
This can be changed this by symlinking the `packages.txt` to a different target set.

It is possible to try genthat on any package.
Simply just add your favorite R package(s) into `packages.txt` file.
Just make sure that they are installed like (basically including their runnable code):

```r
install.packages("MyFavoritePackage", destdir='/CRAN', INSTALL_opts=c('--example', '--install-tests', '--with-keep.source', '--no-multiarch'), dependencies=TRUE)
```

and the downloaded sources in `/CRAN/*.tar.gz` are extracted in `/CRAN`.

#### Rerunning the experiment

The repository already contains the experiment ran (in `experiment` directory). 
To redo the experiment:

1. Make sure the docker image is running

2. Select the size of the experiment
For example, to run a smaller set
```sh
rm packages.txt
ls -s packages-400.txt packages.txt
```

3. Run
```sh
./run-experiment.sh
```
This runs the `./extract-tests.R` it in [parallel](https://www.gnu.org/software/parallel/) for each package found in the `packages.txt` file.
The result are two RDS files:  
- a `experiment/<package_name>/coverage.RDS` - contains test code coverage from covr  
- a `experiment/<package_name>/tests.RDS` - contains the result of running `gen_from_package`  
plus all the regular genthat extracted tests.  
**This will take a while!**

4. Knit the `cran-experiment.Rmd` using provided [R studio](http://localhost:8787) or run
```sh
docker exec -u rstudio -w /home/rstudio issta18-genthat Rscript -e 'rmarkdown::render("cran-experiment.Rmd")'
```
and then open the resulting [`cran-experiment.html`](http://localhost:8787/files/cran-experiment.html)

#### A note on running package code

Genthat extracts tests by running available R code from R packages.
This is not always deterministic since some of the code tries to access various web pages or have some hard-coded values.
This is means that it might happen that some of the packages might fail.
However, there should be a small number of them.

## Build image locally

The image is hosted on the [docker hub](https://hub.docker.com/r/fikovnik/issta18-artifact/) and shall be available for download.
To make a local build run `build.sh`:


```
#!/bin/sh

docker build \
       --rm \
       --build-arg REPO=https://mirrors.nic.cz/R \
       -t prlprg/issta18-genthat \
       .
```

## Toubleshooting

### Docker on OSX

It is better to use homebrew cask to install docker:

```sh
brew cask install docker
```

in case you see `docker: Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?.` error message
cf: https://stackoverflow.com/a/44719239
