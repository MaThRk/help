# More or LESS pretty formated linear model output


#' @export

ann_reg = function(x, digits = 2){

  intercept = round(coef(x)[[1]],digits)
  slope = round(coef(x)[[2]], digits)

  if(!inherits(x, "lm")){ # for the quantile regression case
    text = paste0("Y = ", intercept, " + ", slope, " * X")
    return(text)
  }else{ # for linear models also report the coefficient of determination
    r = round(summary(x)$r.squared, digits)
    s = ifelse(slope > 0, "+", "")
    text = paste0("Y = ", intercept, s, slope, "X; ", "R^2 ", r)
    return(text)
  }
}


