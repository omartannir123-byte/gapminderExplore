#' Filter Gapminder for Selected Countries
#'
#' @param data A gapminder-style dataset.
#' @param countries A character vector of country names.
#'
#' @return A filtered data frame.
#' @export
filter_country <- function(data, countries) {
  dplyr::filter(data, country %in% countries)
}
