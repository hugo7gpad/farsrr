#' Reads file into R as a tibble
#'
#' @description `fars_read` takes `a string` argument used as
#' file name.If a file with that name exists, it reads that file into R
#' without showing progress bars, ignoring all simple diagnostic messages
#' and coerces it to `a tibble`. As side effect, `fars_read` prints
#' out the file as `tibble`.
#'
#' If `filename` is not a name of a file or is not a string,`fars_read`
#' returns an error.
#'
#' @param filename A string, name of a file to read into R
#'
#' @return The `fars_read` function returns the file named file name as
#' `a tibble`.
#'
#' @importFrom readr read_csv
#' @importFrom tibble as_tibble
#'
#' @examples
#' \dontrun{
#' fars_read(accident_2015.csv.bz2)
#' fars_read(make_filename(2013))
#' fars_read(make_filename(2014))
#' }
#'
#' @export
fars_read <- function(filename) {
  if(!file.exists(filename))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    readr::read_csv(filename, progress = FALSE)
  })
  tibble::as_tibble(data)
}
