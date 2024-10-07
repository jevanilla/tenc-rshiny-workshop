# Setup file for the workshop: "Introduction to Developing Interactive Shiny Applications in R"

installed = rownames(installed.packages())

cran_packages <- c("shiny", "dplyr", "ggplot2", "DT", "leaflet", "bslib")

ix = (cran_packages %in% installed)
for (package in cran_packages[!ix]) {
  install.packages(package)
}

suppressPackageStartupMessages({
  for (package in cran_packages) library(package, character.only = TRUE)
})
