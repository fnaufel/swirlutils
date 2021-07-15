#' @title Add script header to script file and copy result to scripts dir
#' @description Creates, in *scripts directory* of current lesson,
#'   a file named `<script>.R` containing the header copied from
#'   `template-script.R` (in the *course directory*), followed by
#'   the contents of the file `<script>.R` (in the *lesson directory*).
#' @param script Name of script file, with ot without extension
#' @author fnaufel
#' @export
add_script_header <- function(script) {

  # Add .R extension to script name, if necessary
  if (!endsWith(script, '.R'))
    script <- paste0(script, '.R')

  # Create scripts dir, if necessary
  if (!dir.exists(get_scripts_path()))
    dir.create(get_scripts_path())

  # Copy template to scripts dir,
  # with script's name,
  # overwriting if necessary
  copia <- file.copy(
    file.path(get_course_path(), 'template-script.R'),
    file.path(get_scripts_path(), script),
    overwrite = TRUE
  )

  if (!copia)
    stop(
      'Problem copying ',
      file.path(get_course_path(), 'template-script.R')
    )

  # Append script
  app <- file.append(
    file.path(get_scripts_path(), script),
    file.path(get_lesson_path(), script)
  )

  if (!app)
    stop(
      'Problem appending ',
      file.path(get_lesson_path(), script)
    )

}
