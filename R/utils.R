check_required_columns <- function(data) {
  required <- c("country", "continent", "year", "lifeExp", "gdpPercap", "pop")
  missing <- setdiff(required, names(data))

  if (length(missing) > 0) {
    stop("Missing required columns: ", paste(missing, collapse = ", "))
  }
  TRUE
}
