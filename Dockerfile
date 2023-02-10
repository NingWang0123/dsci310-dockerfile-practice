FROM rocker/rstudio:4.1.3

RUN Rscript -e "install.packages('remotes', repo='http://cran.us.r-project.org')"

RUN Rscript -e "remotes::install_version('cowsay', version = '0.8.0')"

RUN Rscript -e "remotes::install_version('devtools', version = '2.4.5')"

WORKDIR /Applications/RStudio.app 

RUN pwd