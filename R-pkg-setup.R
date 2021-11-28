
## Elearning NFI - Raw data
## Gael Sola, FAO
## November 2021


## Libs
library(devtools)
library(usethis)
library(roxygen2)
library(tidyverse)

## Make package files
# usethis::create_package("D:/github-repos/eNFIrawdata")

## create NFI data files
tt <- list.files("data-tmp", full.names = T)

for (i in seq_along(tt)){
  tt_name <- tt[i] %>% str_remove(".*/") %>% str_remove(".csv")
  assign(tt_name, read_csv(tt[i])) 
}

usethis::use_data(raw_plot, raw_tree, raw_species, raw_wdsp, raw_wdgn)

## Create Louland spatial data
source("data-raw/create-louland.R", local = TRUE)

## Check for recommended compression 
tools::checkRdaFiles("data/raw_wdgn.Rda")

## data description added to R/

## Check
devtools::check()

## convert Roxygen to .Rd files in man/
devtools::document()

## Install
devtools::install()

## Add github actions
usethis::use_github_action("check-standard")
