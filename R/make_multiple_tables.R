#' Make multiple short tables out of one long table
#'
#' @param df a very long table
#' @param row_length the amount of rows per each table
#'
#' @return
#' @export
#'
#' @examples
#'

make_multiple_tables <- function(df, row_length = 30) {

  for (i in 1:ceiling(length(names(df)) / row_length)) {

    dt <- data.frame(x = seq((i - 1) * row_length + 1, min(c(length(names(df)), i * row_length)), 1),
                     names = names(df[((i - 1) * row_length + 1):(min(c(length(names(df)), i * row_length)))]))

    print(xtable::xtable(dt,
                         caption = paste0("Part ", i)),
                  caption.placement = "top",
                  include.rownames = FALSE,
                  include.colnames = TRUE,
                  comment = FALSE)
  }
}
