\name{check_pattern}
\alias{check_pattern}
\title{Check a pattern against lines}
\usage{
  check_pattern(pattern, lines, ...)
}
\arguments{
  \item{lines}{character vector of lines of text to check,
  output from \code{\link{readLines}}.}

  \item{pattern}{perl compatible regular expression.}

  \item{...}{discarded.}
}
\value{
  returns an integer vector of the problem lines if
  problems were found. otherwise returns TRUE if the lines
  pass the check.  \code{\link{isTRUE}} could be useful for
  checking the return value.

  \link[lint:conversion]{find} compatible format.
}
\description{
  This is part of lint which checks lines of text for
  stylistic problems. The pattern provided should be a Perl
  compatible regular expression.
}
\seealso{
  Other lint: \code{\link{lint}}
}

