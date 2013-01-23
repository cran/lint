\name{dispatch_test}
\alias{dispatch_test}
\title{Dispatch tests to the appropriate handler}
\usage{
  dispatch_test(test, file,
    parse.data = getParseData(parse(file, keep.source = TRUE)),
    lines = readLines(file), quiet = FALSE,
    warning = with_default(test$warning, FALSE))
}
\arguments{
  \item{test}{the test}

  \item{file}{the file to check}

  \item{parse.data}{parse data from
  \code{\link{getParseData}}}

  \item{lines}{the lines to evaluate, overrides file.}

  \item{quiet}{should the test be quiet, i.e. no messages
  or warnings?}

  \item{warning}{should messages be upgraded to warnings,
  ignored if \code{quiet=TRUE}.}
}
\value{
  returns the results from the test handler, which should
  be either a TRUE for a passed test or the lines,
  locations, and/or string violating the rules.
}
\description{
  runs a test the the appropriate handler.
}

