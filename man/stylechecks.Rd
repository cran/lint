\docType{data}
\name{stylechecks}
\alias{lint.style}
\alias{spacing.indentation.evenindent}
\alias{spacing.indentation.notabs}
\alias{spacing.linelength.100}
\alias{spacing.linelength.80}
\alias{spacing.notabs}
\alias{spacing.spaceaftercomma}
\alias{spacing.spacearoundequals}
\alias{spacing.spacearoundinfix}
\alias{spacing.twobeforecomments}
\alias{stylechecks}
\alias{style_checks}
\alias{style_tests}
\title{Style checks}
\format{Each test can be defined in several formats and is very flexible.
A test consists of a names list of attributes.
\enumerate{
  \item \code{pattern} is a pcre compatible \link[base:regex]{regular
        expression} that is tested. Can be a character vector of expressions.
  \item \code{message} The message to be displayed.
  \item \code{include.region} lists regions to restrict the search to.
        Can be a character vector specifying the known regions, or a list of
        functions that interpret output from \code{\link{parser}}.
  \item \code{exclude.region=c('comments', 'string')} lists regions to
        restrict the search to. Operates the sames as \code{include.region}.
  \item \code{use.lines=T} should the pattern be evaluated in lines (default)
         or as a contiguous block of text.
  \item \code{warning=F}
}}
\usage{
  spacing.linelength.80

  spacing.linelength.100

  spacing.indentation.notabs

  spacing.notabs

  spacing.indentation.evenindent

  spacing.spaceaftercomma

  spacing.spacearoundinfix

  spacing.spacearoundequals

  spacing.twobeforecomments

  lint.style
}
\description{
  Style checks
}
\keyword{datasets}

