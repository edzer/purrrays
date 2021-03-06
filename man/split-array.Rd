% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/array_split_bind.R
\name{split_on_dim}
\alias{split_on_dim}
\alias{split_on_rows}
\alias{split_on_cols}
\alias{split_along_dim}
\alias{split_along_rows}
\alias{split_along_cols}
\title{Split an array along a dimension}
\usage{
split_on_dim(X, .dim, f = dimnames(X)[[.dim]] \%||\% seq_along_dim(X, .dim),
  drop = NULL)

split_on_rows(X, f = rownames(X) \%||\% seq_along_rows(X), drop = NULL)

split_on_cols(X, f = colnames(X) \%||\% seq_along_cols(X), drop = NULL)

split_along_dim(X, .dim, drop = NULL, .keep_names = TRUE)

split_along_rows(X, drop = NULL, .keep_names = TRUE)

split_along_cols(X, drop = NULL, .keep_names = TRUE)
}
\arguments{
\item{X}{an array, or list of arrays. Atomic vectors without a dimension
attribute is treated as a 1 dimensions array. Names of list are preserved.}

\item{.dim}{a scalar integer, specifying which dimension to split along}

\item{f}{a vector or list of vectors. Must be the same length as the dimension being split. Passed on to \code{base::split()} (also, \code{base::interaction()} if a list).}

\item{drop}{passed on to \code{[}.}

\item{.keep_names}{Logical. If \code{TRUE} then if the dim being split along has
dimnames, then the returned list has those names.}
}
\value{
A list of arrays, or if a list of arrays was passed in, then a list
of lists of arrays.
}
\description{
\code{split_along_dim(X, .dim)} is equivalent to
\code{split_on_dim(X, seq_along_dim(X, .dim))}
}
\examples{
X <- array(1:8, c(2,3,4))
X
split_along_dim(X, 2)
split_on_dim(X, 2, c("a", "a", "b"), drop = FALSE)
}
