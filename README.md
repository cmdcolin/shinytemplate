# shinytemplate

[![Build Status](https://travis-ci.org/cmdcolin/shinytemplate.svg?branch=master)](https://travis-ci.org/cmdcolin/shinytemplate)

Shiny template that lets you develop your shiny app as an R package. This app also tries to demonstrates some other good practices such as


## Goals for functionality

- Allow parsing URL params to switch to different tabs or app states
- Allow seeing changes to code simply with page refreshes if running in "dev mode". Normal `shiny` has this but running as a package needed a slightly modified setup

For time being, this is a template for complete Shiny apps, not widgets that can be included in other Shiny apps

## Goals for code style

- Use code modularization via modules
- Allow users to download and run your app with `devtools::install_github` and then run with `shinytemplate()`
- Consistent code style checks with lint


## Install

    install.packages('devtools')
    devtools::install_github('cmdcolin/shinytemplate')


## Running app

The library is intended to be installed via a package manager (as above with install_github) and can be run as follows

    library(shinytemplate)
    shinytemplate()
    
The function also accepts some arguments, so if your app benefits from the user supplying arguments, they can run `shinytemplate(option1 = "Random data variable used by shiny app", option2 = "More random data, like paths to data files")`

## For developers

An important goal for this template was to allow for code changes to get reloaded by just refreshing the browser which speeds up development

    devtools::load_all()
    shinytemplate(dev = T)

The `devtools::load_all` function loads the library in the current directory, and then `shinytemplateDev` uses runApp pointing to the `inst/appdir` directory
