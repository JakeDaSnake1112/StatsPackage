#' My Read
#'
#' \code{myread} reads the data from my local excel directory for this class.
#'
#' The directory is set in the function, but it can be redefined according to what dird needs to be.  The argument searches for a file with an exact filename match, including extension.
#' @param x A path.
#' @param dird The directory if it needs to be changed.
#' @usage myread(x, dird)
#' @return
#' @export
#' @examples myread("DDT.xls")
myread <- function(x,dird='D:/jakew/Documents/School\ documents/AppliedStatMethods/Data/Excel/'){


  readxl::read_xls(paste0(dird,x))
}

myread("DDT.xls")
