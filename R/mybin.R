
#' My Binomial
#'
#' \code{mybin} creates many iterations of a random binomial sample to experimentally see what happens in a binomial distribution.
#'
#' @param iter Number of iterations
#' @param n Number of trials
#' @param p Probability
#'
#' @return
#' @export
#' @usage mybin(iter, n, p)
#' @examples
#' mybin(10, 10, 0.6)
mybin = function(iter=100,n=10, p=0.5){

  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)

  succ=c()
  for( i in 1:iter){

    sam.mat[,i]=sample(c(1,0),n,replace=TRUE, prob=c(p,1-p))
    succ[i]=sum(sam.mat[,i])
  }
  #Make a table of successes
  succ.tab=table(factor(succ,levels=0:n))
  #Make a barplot of the proportions
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", xlab="Number of successes")
  succ.tab/iter
}
