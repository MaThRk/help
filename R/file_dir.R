#' Parent directory of current file
#' @importFrom rstudioapi  getSourceEditorContext
#' @export
file_dir = function(){

  if(rstudioapi::isAvailable()){
    path_folder = paste0(strsplit(rstudioapi::getSourceEditorContext()$path[[1]], "/")[[1]] %>% .[1:length(.) -
                                                                                                    1],
                         collapse = "/")
    return(path_folder)
  }else{

   this.dir = this.path::this.dir()
   return(this.dir)

  }

}
