FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN Rscript -e "\
    install.packages(c( \
        'arrow', \
        'systemfonts', \
        'renv'), repos = c(CRAN = 'https://cloud.r-project.org') \
        );"

RUN Rscript -e "remotes::install_github('bnprks/BPCells/r')"
