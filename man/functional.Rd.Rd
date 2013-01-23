\name{functional.Rd}
\alias{check_functional}
\alias{function_style}
\alias{functional.Rd}
\title{function based tests}
\usage{
  check_functional(f, ..., file, lines, parse.data)
}
\arguments{
  \item{f}{function that performs the test, the remaining
  parameters must be accepted by f.}

  \item{file}{file name of the file being tested.  File is
  not guaranteed to be an on disk file but could be a
  \link{connection}.}

  \item{lines}{character vector of the lines of the file.}

  \item{parse.data}{data frame with parse data from
  \code{\link{getParseData}}.}

  \item{...}{discarded.}
}
\value{
  The return value of f shouls be a find formated data
  frame.  in the case that the files pass the test the
  function should return an \link{empty.find}.
}
\description{
  Function based tests are much more flexible than pattern
  based tests and as such more responsibility is placed on
  the authors of such tests.  Theoretically, function based
  tests are capable of any type of style tests.

  Inclusion/Exclusion is handled by the calling function(s
  )and does not need to be included in the function but may
  be unless more complicated than include.regions and
  exclude.regions can handle.
}

