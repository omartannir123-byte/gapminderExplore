#' Plot GDP Per Capita Trends
#'
#' @param data Filtered Gapminder-like data.
#'
#' @return A ggplot object.
#' @export
plot_gdp_trends <- function(data) {
  check_required_columns(data)

  ggplot2::ggplot(data, aes(x = year, y = gdpPercap, color = country)) +
    ggplot2::geom_line() +
    ggplot2::labs(
      title = "GDP Per Capita Over Time",
      x = "Year",
      y = "GDP Per Capita"
    )
}
