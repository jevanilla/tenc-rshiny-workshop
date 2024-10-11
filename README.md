Introduction to Developing Interactive Shiny Applications in R
================

Materials for R Shiny Workshop at the [2024 Tribal Exchange Network
Conference](https://sites.google.com/view/tenc24/home)

15 October 2024

## Pre-workshop Instructions

1.  [Download and Install R](https://cloud.r-project.org/) (or updated
    your version to \>4.0.0)

2.  [Download and Install
    RStudio](https://posit.co/download/rstudio-desktop/)

3.  [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
    this repository onto your machine

4.  Set your working directory to `/tenc-rshiny-workshop`

5.  Run the setup.R script to make sure you have all of the requirements
    installed

*Reach out with any questions or for assistance:
<jevanilla@bigelow.org>*.

## Requirements

- [R v4+](https://www.r-project.org/)

- [rlang](https://CRAN.R-project.org/package=rlang)

- [shiny](https://CRAN.R-project.org/package=readr)

- [dplyr](https://CRAN.R-project.org/package=dplyr)

- [ggplot2](https://CRAN.R-project.org/package=ggplot2)

- [DT](https://CRAN.R-project.org/package=DT)

- [leaflet](https://CRAN.R-project.org/package=leaflet)

- [bslib](https://CRAN.R-project.org/package=bslib)

## Example Data

We will use the
[storms](https://dplyr.tidyverse.org/reference/storms.html) dataset in
this workshop.

## Lessons

### 0 - Hello Shiny; Inputs + Outputs

- 0.0 Hello Shiny

- 0.1 Inputs

- 0.2 Outputs

- 0.3 Basic Reactivity

- Challenge 1

### 1 - Reactivity in a Shiny App

- 1.0 Reactivity Intro

- 1.1 Reactive Expressions

- 1.2 Dynamic UI

- 1.3 Tidy with Shiny

- Challenge 2

### 2 - Extras

- 2.0 Layouts

- 2.1 UI Text

- 2.2 Themes

- 2.3 Data IO

### 3 - Sharing your Shiny App

- With other R users

  1.  Share the code (github, zip file, etc.) for others to run locally
  2.  Maintain the code in a public github repository and call:

  <!-- -->

      shiny::runGitHub(repo, username)

  3.  Or to keep things anonymous:

  <!-- -->

      shiny::runGist()

- Publish as a web page

  1.  [Shinyapps.io](https://www.shinyapps.io/) First 5 apps are free

  2.  [Private
      server](https://github.com/rstudio/shiny-server/blob/master/README.md)
      If you have your own Linux server

  3.  [Posit connect](https://posit.co/products/enterprise/connect/)
      Enterprise solution with all the bells and whistles

## Acknowledgements + Resources

Materials in this workshop were adapted from:

- [Mastering Shiny](https://mastering-shiny.org/index.html) by Hadley
  Wickham

- [Building Web Applications with
  Shiny](https://rstudio-education.github.io/shiny-course/)

- [Shiny for R Cheat
  Sheet](https://shiny.posit.co/r/articles/start/cheatsheet/)
