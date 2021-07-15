#' @title Get course path
#' @return Course path as string.
#' @author fnaufel
get_course_path <- function() {

  dirname(get_lesson_path())

}
