#' My Read
#'
#' \code{myread} reads the data from my local excel directory for this class.
#'
#' The directory is set in the function, but it can be redefined according to what dird needs to be.  The argument searches for a file with an exact filename match, including extension.
#' @param "Filename.xls"
#'
#'
#'
#' @examples myread("DDT.xls")
myread=function(x)
{
  dird='D:/jakew/Documents/School\ documents/AppliedStatMethods/Data/Excel/'
  library(readxl)
  read_xls(paste0(dird,x))
}


