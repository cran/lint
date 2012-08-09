\name{make_class_finder}
\alias{find_basic_comment}
\alias{find_call_args}
\alias{find_comment}
\alias{find_doc_comment}
\alias{find_function_args}
\alias{find_function_body}
\alias{find_string}
\alias{find_symbol}
\alias{make_class_finder}
\title{Finder Functions

 Finders are helper functions that assist in the definition of style checks.
 These function assist by finding the regions that are either included
 or excluded from check.  Each finder musta accept the following arguments
 and as well as the variadic argument \code{...}.
 \enumerate{
     \item file
     \item lines
     \item parse.data
 }
 Order of arguments is not guaranteed so explicit names use is required,
 since use of named arguments is guaranteed.
 In addition other arguments may be added later.
 Each finder is expected to retun a \link[lint:conversion]{find}
 formated data.frame.

 Custom finders are encouraged, but finders for common classes are
 included in the package.}
\usage{
  make_class_finder(classes)

  find_comment(..., parse.data)

  find_basic_comment(..., parse.data)

  find_doc_comment(..., parse.data)

  find_string(..., parse.data)

  find_symbol(..., parse.data)

  find_function_args(..., parse.data)

  find_function_body(..., lines, file,
    parse.data = attr(parser(file)))

  find_call_args(..., file,
    parse.data = attr(parser(file)))
}
\arguments{
  \item{classes}{with \code{make_class_finder} the parser
  classes to find.}

  \item{file}{the file being examined.}

  \item{lines}{the lines being examined.}

  \item{parse.data}{data from \code{\link{parser}}}

  \item{...}{extra args that include \code{file}, and
  \code{lines}}
}
\description{
  Finder Functions

  Finders are helper functions that assist in the
  definition of style checks.  These function assist by
  finding the regions that are either included or excluded
  from check.  Each finder musta accept the following
  arguments and as well as the variadic argument
  \code{...}.  \enumerate{ \item file \item lines \item
  parse.data } Order of arguments is not guaranteed so
  explicit names use is required, since use of named
  arguments is guaranteed.  In addition other arguments may
  be added later.  Each finder is expected to retun a
  \link[lint:conversion]{find} formated data.frame.

  Custom finders are encouraged, but finders for common
  classes are included in the package.
}

