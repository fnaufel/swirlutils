#' @title Get lesson path
#' @description Gets path of lesson.yaml file for current lesson

#' @return Path of lesson.yaml file for current lesson (character)
#' @author fnaufel
get_lesson_path <- function() {

  dirname(getOption("swirlify_lesson_file_path"))

}
