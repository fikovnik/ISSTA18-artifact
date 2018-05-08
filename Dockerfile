FROM rocker/rstudio:3.4.4

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -yqq && \
    apt-get install -yqq \
    libxml2-dev \
    zlib1g-dev \
    tree

# base dependencies
RUN Rscript -e 'install.packages(c("devtools", "tidyverse", "caTools", "bitops"))'

# dependencies for the example packages
RUN Rscript -e 'install.packages(unlist(tools::package_dependencies(c("nlmrt", "nlsr", "optimr", "optimx", "Rvmmin"), recursive=TRUE)))'

# packages from the experiment
ARG REPO=https://cloud.r-project.org
RUN mkdir /CRAN
ADD packages.txt /CRAN/packages.txt
RUN Rscript -e "install.packages(readLines('/CRAN/packages.txt'), destdir='/CRAN', repos='$REPO', INSTALL_opts=c('--example', '--install-tests', '--with-keep.source', '--no-multiarch'), dependencies=TRUE)"
RUN ls /CRAN/*.tar.gz | xargs -L 1 tar -C /CRAN -xzf
RUN rm -fr /CRAN/*.tar.gz
RUN chown -R rstudio:rstudio /CRAN

# additional packages
RUN Rscript -e 'install.packages(c("pbapply"))'
RUN apt-get install -yqq parallel

# genthat
RUN Rscript -e 'devtools::install_github("genthat", "PRL-PRG")'
