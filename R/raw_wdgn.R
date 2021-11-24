#' Wood density at genus level.
#'
#' A dataset containing wood density at the genus level for the mock tree 
#' species in the raw_species and raw_tree tables. These values are derived 
#' from Zanne et al. 2009 Global Wood Density database, so that they add 
#' real wood density values to real tree measurements even if the tree 
#' genus names themselves are mock data. To further anonymize the genus 
#' names, a random factor of +/- 0.01 to 0.05 has been added to the wood 
#' densities. 
#'
#' @format A data frame with 806 rows and 2 variables:
#' \describe{
#'   \item{genus}{Tree species mock genus and species names.}
#'   \item{wd_avg2}{Average wood density at genus level in g/cm3.}
#' }
#' 
#' @source Anonymized tropical forest inventories.
#' 
#' @examples
#'   raw_wdgn
"raw_wdgn"