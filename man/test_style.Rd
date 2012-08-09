\name{test_style}
\alias{autotest_style}
\alias{test_style}
\title{Test a patten for consistency.}
\usage{
  test_style(check, ti, only.results = F)

  autotest_style(test.name)
}
\arguments{
  \item{check}{a style check}

  \item{ti}{the test info data}

  \item{only.results}{if true returns results but does not
  check for correspondance.  For debugging.}

  \item{test.name}{the name of the test as a string.
  \code{autotest_style} uses the
  \code{.testinfo.<<stylename>>} object to automatically
  test styles.  The test info object should be a list with
  \code{$lines} and \code{$results}. The '\code{$lines}'
  element is the input lines and \code{$results} is the
  find formated data.frame.}
}
\value{
  either NULL or throws an error for use with test_that
}
\description{
  Test a patten for consistency.
}

