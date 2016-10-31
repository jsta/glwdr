
#' glwd_get
#'
#' @param level integer data level
#' @export
#' @importFrom rappdirs user_data_dir
#' @importFrom utils unzip
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
  "16/files/original/GLWD-level1.zip",
  "17/files/original/GLWD-level2.zip",
  "18/files/original/GLWD-level3.zip"
  )

  url <- paste0(baseurl, files[level])

  dest_dir <- rappdirs::user_data_dir("glwdr")
  dir.create(dest_dir, showWarnings = FALSE)
  file_base <- strsplit(url, "/")[[1]][length(strsplit(url, "/")[[1]])]
  dest_path <- paste0(dest_dir, "/", file_base)

  get_if_not_exists(url, dest_path)
  unzip(dest_path, exdir = dest_dir)
  # unlink(dest_path)
}
