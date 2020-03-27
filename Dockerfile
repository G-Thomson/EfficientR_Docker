FROM rocker/rstudio:3.6.1

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libcurl4-gnutls-dev \
    libgit2-dev \
    libjpeg-dev \
    libpng-dev \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev \
    && install2.r --error \
    --deps TRUE \
    devtools \
    && R -e "devtools::install_github('csgillespie/efficientR')" \
    && rm -rf /tmp/downloaded_packages/
