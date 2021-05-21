#' Return northern hemisphere season for a date
#' @param date An object of class \code{Date}, \code{POSIXct} or an integer beteween 1 and 12

#' @export
seasons = function(date){

    # if not of class date, check whether it is an integer from 1-12
  if (inherits(date, "Date") | inherits(date, "POSIXct")) {
    d = TRUE} else{
    if (date %in% 1:12) {
      d = FALSE
    } else{
      stop("The date has to be either an integer from 1:12 or an object of class date")
    }
  }



  # classify

  winter = as.Date("1999-12-21")
  spring = as.Date("2000-3-21")
  summer = as.Date("2000-6-21")
  fall = as.Date("2000-9-22")
  winter2001 = as.Date("2000-12-21")



  # get the day / month
  if(d == TRUE){ # classify based on the day

    # convert to 2000
    date_2000 = as.Date(strftime(date, format = "2000-%m-%d"))

    # classify
    season = ifelse(date_2000 > winter & date_2000 < spring, "Winter",
           ifelse(date_2000 > spring & date_2000 < summer, "Spring",
                  ifelse(date_2000 > summer & date_2000 < fall, "summer",
                         ifelse(date_2000 > fall & date_2000 < winter2001, "fall", "winter"))))


  }else{ # classify based on the month
    m = date

    season = ifelse(m %in% 1:3, "winter",
                    ifelse(m %in% 4:6, "spring",
                           ifelse(m %in% 7:9, "summer",
                                  "fall")))




  }

  return(season)

}
