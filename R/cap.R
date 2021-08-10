#' Caption for dry period and min_thresh
#'
#' @importFrom glue glue
#' @export

cap = function(n_dry = NULL, daily_thresh = NULL){

  for(i in c(n_dry, daily_thresh)) {
    if(is.null(i)){
      stop(paste0(i, " cannot be NULL"))
    }
  }

  s = glue("Dry Period: {n_dry} <br> Daily Threshold {daily_thresh}")
  return(s)

}

#' p3 string
#' @export
cap_3 = function(md = T) {
  if (md) {
    s = "**p3** (precipitation three days prior to the slide) [mm]"
    return(s)
  } else{
    s = "p3 (precipitation three days prior to the slide) [mm]"
  }
}

#' p3 string
#' @export
cap_15 = function(md = T) {
  if (md) {
    s = "**p15** (precipitation in the 15 days prior to p3) [mm]"
    return(s)
  } else{
    s = "p15 (precipitation in the 15 days prior to p3) [mm]"
  }
}
