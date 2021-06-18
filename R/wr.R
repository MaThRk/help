#' Write or append to file
#'
#' @param file The path to the existent or non-existent file
#' @param text The text to either append or write
#' @param mode Append (a) or write (w)

#' @export
wr = function(file, text, mode = NULL) {
  if (!mode %in% c("w", "a")) {
    stop("modes allowed are a (append) and w (write)")
  }

  if (is.null(mode)) {
    stop("Provide a mode")
  }

  if (!file.exists(file)) {
    cat("The file does not exist")
    ans = readline(prompt = "Do you want to create the file? [y/n] ")
    while (!ans %in% c("y", "n")) {
      ans = readline(prompt = "Either y or n: ")
    }
    if (ans == "y") {
      file.create(file)
    } else{
      cat("Goodbye and good luck")
    }
  }

  if (mode == "w") {
    system(paste0("echo ", text, " > ", file))
  } else if (mode == "a") {
    system(paste0("echo ", text, " >> ", file))
  }

}
