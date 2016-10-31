#' @importFrom utils download.file
get_if_not_exists <- function(url, destfile){
  if(!file.exists(destfile)){
    download.file(url, destfile)
  }else{
    message(paste0("A local copy of ", url, " already exists on disk"))
  }
}

#' @importFrom sp CRS Polygon SpatialPolygons
map_data_to_spdf <- function(df){
  # https://gis.stackexchange.com/questions/171124/
  #   data-frame-to-spatialpolygonsdataframe-with-multiple-polygons

  # http://jwhollister.com/iale_open_science/2015/07/05/03-Spatial-Data-In-R/

  WGS84 <- sp::CRS("+proj=longlat +datum=WGS84")
  df_list <- split(df[,c("long", "lat", "region")], df$region)
  df_poly <- lapply(df_list, function(x) sp::Polygon(cbind(x$long, x$lat)))
  df_poly <- sp::Polygons(df_poly, ID = 1)
  df_poly <- sp::SpatialPolygons(list(df_poly), proj4string = WGS84)
  df_poly

}
