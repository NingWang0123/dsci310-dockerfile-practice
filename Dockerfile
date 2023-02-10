FROM rocker/rstudio:4.1.3

RUN Rscript -e "install.packages('remotes', repo='http://cran.us.r-project.org')"

RUN Rscript -e "remotes::install_version('ggplot2', version = '3.4.1')"

RUN Rscript -e "remotes::install_version('cowsay', version = '5.0')"

WORKDIR /Applications/RStudio.app 

RUN pwd