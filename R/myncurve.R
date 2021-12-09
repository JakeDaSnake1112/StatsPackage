#' My Normal Curve
#'
#' \code{myncurve} creates a curve showing a normal density distribution, then calculates the area under the curve and graphically represents it with a polygon.
#'
#' @param mu The expected value
#' @param sigma The standard deviation
#' @param a What point we want to evaluate the area less than
#'
#' @return
#' @export
#'
#'
#' @usage myncurve(mu, sigma, a)
#' @examples
#' myncurve(3, 1, 4)
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xc = seq(a-(10*sigma),a, length=1000)
  yc = dnorm(xc,mu,sigma)
  polygon(c(a-(10*sigma),xc,a),c(0,yc,0), col = "gray")
  p = pnorm(a, mu, sigma)
  p = round(p,4)
  list(p)
}
