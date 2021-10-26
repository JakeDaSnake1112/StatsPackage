#' MY Central Limit Theorem
#'
#' \code{myclt} creates a statistic from the uniform distribution
#' @param n the number of samples
#' @param iter number of iterations
#' @param a the lower bound for the uniform function
#' @param b the upper bound for the uniform fucntion
#'
#' @return
#' @export
#'
#' @examples myclt(10,10000,a=0,b=5)
myclt=function(n,iter,a=0,b=5){
  y=runif(n*iter,a,b) #A
  data=matrix(y,nr=n,nc=iter,byrow=TRUE) #B
  mu=apply(data,2,mean) #Change this function to mean
  h=hist(mu,plot=FALSE)
  hist(mu,col=rainbow(length(h$mids)),freq=FALSE,main="Distribution of the sample means")
  curve(dnorm(x,mean=(a+b)/2,sd=(b-a)/(sqrt(12*n))),add=TRUE,lwd=2,col="Blue")
  mu
}
