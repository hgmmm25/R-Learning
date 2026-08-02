avg <- function(x) {
  if (!is.integer(x)) {
    warning("Input Valid.")
    message("Try to transform the input.")
    x <- as.integer(x)
    if (any(is.na(x))) {
      stop("Transformation failed!")
    }
  }
  sum(x) / length(x)
}
avg(c("1", "2", "3"))
avg(c("p", "2", "3"))
avg(c(NA, "8", "9"))
