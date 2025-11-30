#' Summarize Life Expectancy by Year
#'
#' @export
summarize_life_expectancy <- function(data) {
  data %>%
    dplyr::group_by(year) %>%
    dplyr::summarise(mean_lifeExp = mean(lifeExp, na.rm = TRUE))
}
