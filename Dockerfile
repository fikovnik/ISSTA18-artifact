FROM rocker/rstudio:3.4.4

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -yqq && \
    apt-get install -yqq \
    libxml2-dev \
    zlib1g-dev \
    tree

USER rstudio

RUN Rscript -e 'install.packages(c("devtools", "tidyverse", "caTools", "bitops"))'
RUN Rscript -e 'devtools::install_github("genthat", "PRL-PRG")'

# dependencies for the example packages
RUN Rscript -e 'install.packages(unlist(tools::package_dependencies(c("nlmrt", "nlsr", "optimr", "optimx", "Rvmmin"), recursive=TRUE)))'


USER root
