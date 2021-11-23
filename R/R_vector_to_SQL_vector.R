#' A function used for passing a vector in R
#' to become a string in SQL.
#'
#' @param v a vector to be converted
#'
#' @return
#' @export
#'

R_vector_to_SQL_vector <- function(v) {

  my_str <- paste0("('", v[1], "'")

  for (i in v[-1]) {
    my_str <- paste0(my_str, ",'", i, "'")
  }
  my_str <- paste0(my_str, ")")

  return(my_str)
}
