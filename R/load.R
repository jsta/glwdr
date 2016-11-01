#' glwd_load
#'
#' @param level integer data level
#' @importFrom rgdal readOGR
#' @importFrom raster raster
#'
#' @export
#'
#' @examples
#' dt <- glwd_load(level = 1)
glwd_load <- function(level){

  glwd_load_level_1 <- function(){
    dest_dir <- rappdirs::user_data_dir("glwdr")
    path <- paste0(dest_dir, .Platform$file.sep, "glwd_1.shp")
    rgdal::readOGR(path, "glwd_1")
  }

  glwd_load_level_2 <- function(){
    dest_dir <- rappdirs::user_data_dir("glwdr")
    path <- paste0(dest_dir, .Platform$file.sep, "glwd_2.shp")
    rgdal::readOGR(path, "glwd_2")
  }

  glwd_load_level_3 <- function(){
    dest_dir <- rappdirs::user_data_dir("glwdr")
    path <- paste0(dest_dir, .Platform$file.sep, "glwd_3", .Platform$file.sep,
              "w001001.adf")
    raster::raster(path)
  }

  if(!(level %in% c(1, 2, 3))){
    stop("Level must be either 1, 2, or 3!")
  }

  if(level == 1){
    res <- glwd_load_level_1()
  }

  if(level == 2){
    res <- glwd_load_level_2()
  }

  if(level == 3){
    res <- glwd_load_level_3()
  }
  res
}
