#' 2013 Yearly accidents reports dataset
#'
#' @source From US NHTSA website
#'  \url{https://www.nhtsa.gov/Data/Fatality-Analysis-Reporting-System-(FARS)}
#'
#' @format A \code{tibble} with `r {nrow(accident_2013.csv.bz2)}`
#'         observations and `r {length(names(accident_2013.csv.bz2))}` columns
#' \describe{   # Documenting only very few columns
#'   \item{YEAR}{Year when accident occurred}
#'   \item{MONTH}{Month when accident occurred}
#'   \item{DAY}{Day when accident occurred}
#'   \item{CITY}{City where accident occurred}
#'   \item{LONGITUD}{Longitud of location where accident occurred}
#'   \item{LATITUDE}{Latitude of location where accident occurred}
#'   }
#'
#' @examples
#' \dontrun{
#' accident_2013.csv.bz2
#'
#' "accident_2013.csv.bz2"
#' }
"accident_2013.csv.bz2"
