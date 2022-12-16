#' draw a geographical map and add points to it
#'
#' @description Both arguments `state.num` and `year` are coerced to integers.
#' `year`is used to create a file name. The `state.num`is used to filter
#' that file at the variable `STATE`. Using the state associated with
#' `state.num` as database, a map is drawn. Using LONGITUD and LATITUDE as
#' coordinates vectors, `fars_map_state` adds points, locations where
#' accidents occurred to the map.
#'
#' `fars_map_state` returns error if any of the following conditions is true:
#' - any of its arguments cannot be coerced to integer
#' - the file doesn't exist for the file name created with `year`
#' - `state.num` is not a value in the column `STATE` of the file associated
#' with `year`.
#'
#' @param state.num, `numeric`, representing a state number
#' @param year, `numeric`, a number representing a year
#'
#' @return This function returns `a geographical map containing points` where
#'         accidents occurred
#'
#' @importFrom dplyr filter
#' @importFrom maps map
#' @importFrom graphics points
#'
#' @examples
#' \dontrun{
#' fars_map_state(1, 2013)
#' fars_map_state(56, 2015)
#' }
#'
#' @export
fars_map_state <- function(state.num, year) {
  filename <- make_filename(year)
  data <- fars_read(filename)
  state.num <- as.integer(state.num)

  if(!(state.num %in% unique(data$STATE)))
    stop("invalid STATE number: ", state.num)
  data.sub <- dplyr::filter(data, STATE == state.num)
  if(nrow(data.sub) == 0L) {
    message("no accidents to plot")
    return(invisible(NULL))
  }
  is.na(data.sub$LONGITUD) <- data.sub$LONGITUD > 900
  is.na(data.sub$LATITUDE) <- data.sub$LATITUDE > 90
  with(data.sub, {
    maps::map("state", ylim = range(LATITUDE, na.rm = TRUE),
              xlim = range(LONGITUD, na.rm = TRUE))
    graphics::points(LONGITUD, LATITUDE, pch = 46)
  })
}
