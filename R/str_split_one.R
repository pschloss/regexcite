#' Split a string
#'
#' @param string A character vector with one element
#' @inheritParams stringr::str_split
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x <- "alpha,bravo,charlie,delta"
#' strsplit(x, pattern = ",")
#' strsplit(x, pattern = ",", n = 2)
str_split_one <- function(string, pattern, n = Inf) {

  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }

}
