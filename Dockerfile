FROM rocker/rstudio:4.1.3

RUN Rscript -e "install.packages('cowsay', repo='http://cran.us.r-project.org')"

RUN Rscript -e "install.packages('remotes', repo='http://cran.us.r-project.org')"


WORKDIR /Applications/RStudio.app 

RUN pwd