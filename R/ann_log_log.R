#' Formatting of the exponential function
#'
#'
#' @export
#'

ann_log_log = function(log_log_model, base, digits = 2){

  # take the log-log model and create the equation y(x) = kx^n
  # where
  # k = log(intercept) # important to use the logarithm that was used to transform the data
  # n the slope of the log-log model

  # check if the base is the natural log
  if (base == "e") {
    k = round(exp(coef(log_log_model)[[1]]), digits)
    n = round(coef(log_log_model)[[2]], 2)
  } else{
    k = round(base ^ (coef(log_log_model)[[1]]), digits)
    n = round(coef(log_log_model)[[2]], 2)
  }

  text = paste0("*y(x) = ", k, "x^", n, "*")
  return(text)

}


