#' Make directories if not yet existing
#'
#'
#' @export
#'
#'
make_dirs = function(...) {

  dirs = list(...)

  for (x in dirs) {

    dir.create(x, recursive = T)
    cat("Created: ", x, "\n")
  }

}
