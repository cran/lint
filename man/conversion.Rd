\docType{data}
\name{conversion}
\alias{conversion}
\alias{empty.find}
\alias{find2replace}
\alias{locate2find}
\alias{parse2find}
\title{Lint internal data structures}
\format{'data.frame':	0 obs. of  4 variables:
 $ line1: int 
 $ col1 : int 
 $ line2: int 
 $ col2 : int}
\usage{
  empty.find

  parse2find(parse.data)

  find2replace(find.data)

  locate2find(loc)
}
\description{
  Lint internal data structures
}
\details{
  parse2find Deprecated.  Due to the changes in R version
  3.0 this function is no longer necessary

  Expects either a parse formatted data.frame or a list of
  data.frames.  each data.frame is a contiguous region that
  is collapsed into a single find formatted data.frame, one
  row for each region.
}
\section{Introduction}{
  lint makes use of several functions from different
  packages that store data in various different formats.
  These functions provide utilities for converting between
  the different formats.

  The formats are: \enumerate{ \item parse - from the
  \code{\link{getParseData}} function.  In parse data each
  element of an expression has it's own row.  \item find -
  similar to parse but gives a row for each region or
  expression of interest.  \item replace - for use with
  \code{\link[stringr:str_sub]{stringr}}.  Uses a column
  structure with start and end, organized into a matrix
  with a row for each line.  \item locate - results from
  \code{\link{str_locate}} from stringr.  same as replace
  for most purposes but does not include a string.  }
}

\section{parse data structure}{
  Parse data structure originates from the
  \code{\link{getParseData}} function,which returns an
  objects with the attribute '\code{data}'.  Parse
  formatteddata contains a row for every token, string, and
  expression.  The data frame describes a tree structure
  with each row a node.  Each node has a parent unless it
  is a root node i.e. parent==0.  It has the following
  columns.  \enumerate{ \item \code{line1} starting line of
  the expression.  \item \code{col1} starting column.
  \item \code{line2} ending line of the expression.  \item
  \code{col2} ending column.  \item \code{token} the token
  class number.  \item \code{id} the unique id of the
  expression \item \code{parent} the parent of the
  expression, 0 if none.  \item \code{top_level} top_level,
  which top level expression is the expression associated
  with \item \code{token} class name of the token.  \item
  \code{terminal} is this a terminal node? i.e. has no
  child nodes.  \item \code{text} the actual text of the
  expression.  }

  The parse data is formatted with C based indexing.  E.g.
  the first two elements would be listed as \code{col1=0,
  col2=2}.  The line number however is 1 based so the first
  line is 1, there is no zero line.
}

\section{Find data structure}{
  For the purposes of the data the find data consists of a
  single row for each section/region with the first 4
  columns of parse.data; the columns \code{line1},
  \code{col1}, \code{line2}, and \code{col2}, marking the
  beginning and end of a section.  This is a condensation
  of the parse data which would have the same columns as
  well as additional columns, and a row for each expression
  in the region.

  Find formatted data is defined to be R or 1 based arrays
  and inclusive.  the first two elements would be
  \code{col1=1, col2=2}.

  Although both \code{col} elements are retained in
  conversion functions, at this time only \code{col}
  columns are used internally.
}

\section{Replace data structure}{
  The data structure for replace data is defined as a data
  frame with columns suitable for use ase arguments to
  str_sub.  That is it has columns \enumerate{ \item
  \code{start} \item \code{end} \item and either
  \code{string} or \code{line} } where \code{string} would
  be preferred but line to match up with line data.
  \code{find2replace} uses the line, since the string is
  not available in the find data.

  Replace data formatted data is also R/1 inclusive based
  arrays.
}

\section{Locate data structure}{
  locate data is defined as the matrix that comes from
  \code{\link{str_locate}}.  It has columns \enumerate{
  \item \code{start} \item \code{end} } and has a row for
  every line.
}
\keyword{datasets}
\keyword{internal}
\keyword{utils,}

