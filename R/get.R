
#' glwd_get
#'
#' @param level integer data level
#' @export
#' @import rappdirs
#' @encoding UTF-8
#' @references Lehner, B., Döll, P.: Development and validation of a global
#'database of lakes, reservoirs and wetlands, Journal of Hydrology, Volume
#'296, Issues 1–4, 20 August 2004, Pages 1-22,
#'http://dx.doi.org/10.1016/j.jhydrol.2004.03.028.
#'
#' @examples
#' glwd_get(level = 1)
glwd_get <- function(level){
  baseurl <- "http://assets.worldwildlife.org/publications/"

  files <- c(
  "16/files/original/GLWD-level1.zip?1343838522",
  "17/files/original/GLWD-level2.zip?1343838637",
  "18/files/original/GLWD-level3.zip?1343838716"
  )

  paste0(baseurl, files[level])
}
