#' number of accidents in each month for a list or numeric vector of years
#'
#' @description `fars_summarize_years` function takes a list or numeric vector
#' argument `years`. It creates a list of 2 columns tibbles: MONTH, year
#' for each element `year`in `years`. It Row-binds, regroups and summarizes
#' these 2 columns tibbles to return summary of numbers of accidents in each
#' month of each element of `years`.
#'
#' `fars_summarize_years` will generate error if any element of `years` cannot
#' be coerced to integer or if there is no file for the file name created with
#' any element of `years`.
#'
#' @param years A list or numeric vector containing years as integers
#'
#' @return `a tibble`, summary of numbers of accidents in each month of
#'          each year in the argument `years` supplied.
#'          12 rows and (1 + number of elements in years) columns.
#'
#' @importFrom dplyr bind_rows summarize n group_by
#' @importFrom magrittr %>%
#' @importFrom tidyr spread
#'
#' @examples
#' \dontrun{
#' fars_summarize_years(c(2013, 2014, 2015))
#' fars_summarize_years(c(2013, 2015))
#' }
#'
#' @export
fars_summarize_years <- function(years) {
  dat_list <- fars_read_years(years)
  dplyr::bind_rows(dat_list) %>%
    dplyr::group_by(year, MONTH) %>%
    dplyr::summarize(n = n()) %>%
    tidyr::spread(year, n)
}
