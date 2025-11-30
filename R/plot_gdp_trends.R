#' Plot GDP per Capita Trends for Selected Countries
#'
#' @export
plot_gdp_trends <- function(data) {
  ggplot2::ggplot(data, aes(x = year, y = gdpPercap, color = country)) +
    ggplot2::geom_line(size = 1) +
    ggplot2::labs(
      title = "GDP per Capita Over Time",
      x = "Year",
      y = "GDP per Capita"
    ) +
    ggplot2::theme_minimal()
}
