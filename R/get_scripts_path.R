#' @title Build path name of scripts directory
#' @description Builds path name of scripts directory of current lesson.

#' @return Path name of scripts directory of current lesson (character).
#' @author fnaufel
get_scripts_path <- function() {

  file.path(get_lesson_path(), 'scripts')

}
