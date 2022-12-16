#' Create 2 columns tibble (MONTH, year) for each element of a
#' list or numeric vector of years
#'
#' @description The `fars_read_years` function takes a list or numeric vector
#' argument `years`and uses the function `make_filename`to create a `file name
#' for each element `year` in`years`. Then returns a two columns tibble:
#' MONTH, year for each `year` by adding a new column (year) to the file of that
#' year and selecting the columns MONTH, year.
#'
#' `fars_read_years` produces an error if any element `year` in the argument
#' `years` cannot be coerced to integer or if there is no file for the `
#' file name created for that `year`.
#'
#' @param years list or numeric vector containing years as integers
#'
#' @return This function returns `a list` of 2 columns tibbles. Numbers of rows
#' are the same as in the file of each element of the argument years
#'
#'
#' @importFrom dplyr mutate select
#' @importFrom magrittr %>%
#'
#' @examples
#' \dontrun{
#' fars_read_years(c(2013, 2014, 2015))
#' fars_read_years(c(2013, 2015))
#' }
#'
#' @export
fars_read_years <- function(years) {
  lapply(years, function(year) {
    file <- make_filename(year)
    tryCatch({
      dat <- fars_read(file)
      dplyr::mutate(dat, year = year) %>%
        dplyr::select(MONTH, year)
    }, error = function(e) {
      warning("invalid year: ", year)
      return(NULL)
    })
  })
}
