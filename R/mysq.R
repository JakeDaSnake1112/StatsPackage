#' mysq
#'
#' Squares a given x
#' @param x a number
#'
#' @return
#' @export
#'
#' @examples
#' mysq(3)
mysq <- function(x){

  y <- x^2
  plot(y ~ x)

  list(x = x, y = y, ysum = summary(y))

}
