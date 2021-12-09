#' My Confidence Interval
#'
#' \code{myci} creates a confidence interval for a population mean given a sample.
#'
#' @param d Data in the form of a list of numbers.
#' @param a (1-a)100 \% confidence interval.
#'
#' @return
#' @export
#'
#'
#' @examples
#'
#' myci(c(10,12,13,14,15))
#'
myci= function(d, a = 0.05){
  n = length(d)
  t = qt((1-(a/2)),n-1)
  ci=c()
  ci[1]=mean(d)-t*sd(d)/sqrt(n)
  ci[2]=mean(d)+t*sd(d)/sqrt(n)
  ci
}
