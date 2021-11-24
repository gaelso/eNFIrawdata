#' Wood density at species level.
#'
#' A dataset containing wood density for the mock tree species in the 
#' raw_species and raw_tree tables. These values are derived from Zanne et 
#' al. 2009 Global Wood Density database, so that they add real wood density 
#' values to real tree measurements even if the tree species themselves are 
#' mock data. To further anonymize the tree species names, a random factor of 
#' +/- 0.01 to 0.05 has been added to the wood densities. 
#'
#' @format A data frame with 1721 rows and 2 variables:
#' \describe{
#'   \item{sp_name}{Tree species mock genus and species names.}
#'   \item{wd_avg}{Average wood density at species level in g/cm3.}
#' }
#' 
#' @source Anonymized tropical forest inventories.
#' 
#' @examples
#'   raw_wdsp
"raw_wdsp"