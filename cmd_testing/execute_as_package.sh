#! /usr/bin/env bash

. ~soft_bio_267/initializes/init_degenes_hunter

cd ..
Rscript -e "devtools::document()"
Rscript -e "devtools::install()"

cd cmd_testing
mkdir install_folder
Rscript -e "DEgenesHunter::install_DEgenes_hunter('install_folder')"
install_folder/degenes_Hunter.R -h