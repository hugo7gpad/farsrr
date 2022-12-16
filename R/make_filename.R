#' Create a file name using an integer
#'
#' @description `make_filename` takes a numeric argument `year`that it coerces
#' to integer and supplies it along with`fmt = "accident_%d.csv,bz2"` to the
#' `sprintf` function to create the file name by replacing `%d` by `year`.
#'
#' `make_filename` will generate an error if its argument cannot be coerced
#'  to integer.
#'
#' @param year numeric, integer referencing a year
#'
#' @return The function `make_filename` returns `a string`.
#'
#' @examples
#' \dontrun{
#'  make_filename(2015)
#'  make_filename(2013)
#'  make_filename(001)
#'  make_filename(20.75)
#' }
#'
#' @export
make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.bz2", year)
}
