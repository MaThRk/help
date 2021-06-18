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
