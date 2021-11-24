#' Anonymized measurements of 10526 trees in Tropical Forests.
#'
#' A dataset containing the measurement of 10526 trees from 862 forest plots 
#' in the Tropical global ecological zone. This data has been heavily edited
#' to ensure minimum disclosure of sensitive information and should be used 
#' for educational purposes only.  
#'
#' @format A data frame with 10526 rows and 11 variables:
#' \describe{
#'   \item{plot_id}{Unique identifier of the plot where trees were measured.}
#'   \item{tree_id}{Unique identifier of the trees in the table.}
#'   \item{tree_no}{Tree number in the plot.}
#'   \item{tree_dbh}{Tree diameter at breast height in cm.}
#'   \item{tree_pom}{Tree point of measurement in m.}
#'   \item{tree_height_top}{Tree total height in m.}
#'   \item{tree_height_bole}{Tree height at the first big branch in m.}
#'   \item{tree_dist}{Tree distance to the plot center point in m.}
#'   \item{tree_azimuth}{Tree azimuth from the plot center in degrees  (0 to 360).}
#'   \item{tree_health}{Tree health noted 0, 1 or 2 for heathly, slightly affected or severely affected}
#' }
#' @source Tropical Forest inventories.
#' 
#' @examples
#'   raw_tree
"raw_tree"