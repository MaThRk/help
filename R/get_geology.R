#' Get the geology of South Tyrol for an object of class sf
#'
#' @export
#'

get_geology = function(sf.object = NULL,
                       geo_path = "/mnt/CEPH_PROJECTS/Proslide/Envir_data/Geology/reclass_geo.gpkg"){

  if(is.null(sf.object) | !inherits(sf.object, "sf")){
    stop("Provide an sf object...")

  }


  # read geology
  geo = read_sf(geo_path)

  # check crs
  crs_inp = st_crs(sf.object)
  crs_geo = st_crs(geo)

  if (!crs_inp == crs_geo) {

    warning("Reprojecting the geology to the crs of the input sf object")
    geo = st_transform(geo, crs = crs_inp)

  }

  inter = as.numeric(st_intersects(sf.object, geo))
  geo_class = geo$class_name[inter]

  return(geo_class)


}
