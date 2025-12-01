#' Convert Data to gme_data Object
#'
#' @param data Gapminder data frame.
#' @return An object of class gme_data.
#' @export
as_gme <- function(data) {
  check_required_columns(data)
  structure(data, class = c("gme_data", class(data)))
}
