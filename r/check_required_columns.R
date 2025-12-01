check_required_columns <- function(data) {
  required <- c("country", "year", "lifeExp", "gdpPercap")
  missing <- setdiff(required, colnames(data))

  if (length(missing) > 0) {
    stop("Missing required columns: ", paste(missing, collapse = ", "))
  }
}
