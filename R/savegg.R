#' Save ggplot to multiple devices
#'
#' @importFrom ggplot2 ggsave
#'
#' @param f Filename without any extension
#' @param dev Vector of entensions
#'
#' @example
#' plot = mtcars %>% ggplot(aes(x=mpg, y=cyl)) + geom_point()
#' f = here("name/no_extension")
#' savegg(f = f, dev = c(".png", ".svg"), width=12, height=8, dpi=300, plot=plot)
#'
#' @export

savegg = function(f=NULL, dev=NULL, ...){

  sapply(dev, function(x){ggsave(paste0(f, ".", x), ...)})
  return(NULL)
}
