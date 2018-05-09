FROM rocker/rstudio:3.4.4

ARG REPO=https://cloud.r-project.org

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -yqq && \
    apt-get install -yqq \
    cloc \
    libxml2-dev \
    parallel \
    tree \
    zlib1g-dev 

# base dependencies
RUN Rscript -e "install.packages(c('devtools', 'tidyverse', 'caTools', 'bitops'), repos='$REPO')"

# dependencies for the example packages
RUN Rscript -e 'install.packages(unlist(tools::package_dependencies(c("nlmrt", "nlsr", "optimr", "optimx", "Rvmmin"), recursive=TRUE)))'

# packages from the experiment
RUN mkdir /CRAN
ADD packages-all.txt /CRAN/packages-all.txt
RUN Rscript -e "install.packages(readLines('/CRAN/packages-all.txt'), destdir='/CRAN', repos='$REPO', INSTALL_opts=c('--example', '--install-tests', '--with-keep.source', '--no-multiarch'), dependencies=TRUE)"
RUN ls /CRAN/*.tar.gz | xargs -L 1 tar -C /CRAN -xzf
RUN rm -fr /CRAN/*.tar.gz
RUN find /CRAN -maxdepth 1 -type d -printf "echo %p; cloc --quiet --csv %p/R | sed 's/,\".*$//' | tail -n +2 > %p/sloc.csv\n" | sh
RUN chown -R rstudio:rstudio /CRAN

# genthat
RUN Rscript -e 'devtools::install_github("genthat", "PRL-PRG")'
