% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract.R
\name{extract_dim}
\alias{extract_dim}
\alias{extract_rows}
\alias{extract_cols}
\title{Extract with \code{[} on a specified dimension}
\usage{
extract_dim(X, .dim, idx, drop = NULL)

extract_rows(X, idx, drop = NULL)

extract_cols(X, idx, drop = NULL)
}
\arguments{
\item{X}{Typically, an array, but any object with a \code{[} method is accepted
(e.g., dataframe, vectors)}

\item{.dim}{A scalar integer, specifying the dimensions to extract from}

\item{idx}{A numeric, boolean, or character vector to perform subsetting with}

\item{drop}{Passed on to \code{[}. If \code{NULL} (the default), then drop is omitted
from the argument, and the default is used (defaults to TRUE for most
objects, including arrays)}
}
\description{
Extract with \code{[} on a specified dimension
}
\examples{
# extract_rows is useful to keep the same code path for arrays of various sizes
X <- array(1:8, c(4, 3, 2))
y <- c("a", "b", "c", "d")
(Y <- onehot(y))

extract_rows(X, 2)
extract_rows(Y, 2)
extract_rows(y, 2)

library(zeallot)
c(X2, Y2, y2) \%<-\% extract_rows(list(X, Y, y), 2)
X2
Y2
y2
}
