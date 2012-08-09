\name{lint}
\alias{lint}
\title{Check for stylistic errors.}
\usage{
  lint(file = ".", style = lint.style, recurse = TRUE,
    text = NULL)
}
\arguments{
  \item{file}{a vector of file paths.}

  \item{style}{The list of styles tests to use to check.}

  \item{text}{text to check}

  \item{recurse}{recurse into directory and
  sub-directories.

  Check source documents for stylistic errors.  The test
  are given as a list in \code{tests}.  If a directory is
  given all *.R files in that directory and sub-directories
  are checked.  If a file other than a .R or .r file is
  desired it must be given explicitly as the \code{file}
  argument.}
}
\description{
  Check for stylistic errors.
}
\seealso{
  Other lint: \code{\link{check_pattern}}
}

