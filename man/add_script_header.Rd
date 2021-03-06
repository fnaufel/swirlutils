% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_script_header.R
\name{add_script_header}
\alias{add_script_header}
\title{Add script header to script file and copy result to scripts dir}
\usage{
add_script_header(script)
}
\arguments{
\item{script}{Name of script file, with ot without extension}
}
\description{
Creates, in \emph{scripts directory} of current lesson,
a file named \verb{<script>.R} containing the header copied from
\code{template-script.R} (in the \emph{course directory}), followed by
the contents of the file \verb{<script>.R} (in the \emph{lesson directory}).
}
\author{
fnaufel
}
