#' The ggplot theme for my Masters Thesis
#'
#' @importFrom ggplot2 theme_light
#'
#' @export
theme_ma = function(base_size = 13, base_family = "Times", title_size = 18,
                    subtitle_size = 13){

  ggplot2::theme_light(base_size = base_size, base_family=base_family) %+replace%
    theme(
      plot.margin = unit(c(1,1,1,1), "cm"),
      panel.background = element_rect(colour = "black", size=1.2),
      panel.grid.minor = element_blank(),
      axis.title = element_text(size = base_size),
      plot.title = element_text(size = title_size, hjust = .5, vjust=3),
      plot.subtitle = element_text(size = subtitle_size, hjust = .5, face = "italic", vjust=2),
      strip.background = element_rect(fill="transparent"),
      strip.text = element_text(size = base_size, face = "italic")
    )
}
