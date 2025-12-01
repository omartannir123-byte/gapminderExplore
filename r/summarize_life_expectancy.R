#' Summarize Life Expectancy by Country
#'
#' @param data Gapminder data frame.
#'
#' @return A summary data frame with mean, min, max life expectancy.
#' @export
summarize_life_expectancy <- function(data) {
  check_required_columns(data)

  data |>
    dplyr::group_by(country) |>
    dplyr::summarize(
      mean_lifeExp = mean(lifeExp, na.rm = TRUE),
      min_lifeExp = min(lifeExp),
      max_lifeExp = max(lifeExp),
      .groups = "drop"
    )
}
