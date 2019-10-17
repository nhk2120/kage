#' Get Korean Age or Global Age
#'
#' @param x A birthday, can be any date in a form of year-month-day.
#' @param y Any date in a form of year-month-day.
#' @param z T for Korean age. F for global age.
#' @return Korean or global age for given two dates: \code{x} and \code{y}.
#' @examples
#' kage("1996-05-28", "2019-10-17", T)
#' kage("1992-04-18", "2005-03-04", F)
#' @export

kage = function(x, y, z) {
  if (is.numeric(x) | is.numeric(y) == TRUE) {
    warning("Must put double quotes for argument x and y")
  } else {
    if (z == T) {
      (as.numeric(substr(y, start = 1, stop = 4)) -
         as.numeric(substr(x, start = 1, stop = 4))) + 1
    } else if (z == F) {
      MESS::age(x, y)
    } else {
      warning("Must put either T of F for argument")
    }
  }
}
