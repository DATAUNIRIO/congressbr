% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cam_get_votes.R
\name{cam_get_votes}
\alias{cam_get_votes}
\title{Downloads votes of a specific bill by providing type, number and year. A bill can have more than one roll call,
# and the API does not provide an id to identify them So we provide one (id_rollcall).}
\usage{
cam_get_votes(type, number, year)
}
\value{
A tibble, of classes \code{tbl_df}, \code{tbl} and \code{data.frame}.
}
\note{
Requesting data from a long period of time with \code{details = TRUE} will
return a large object in terms of memory. It will also be rather unwieldy, with
many columns.
}
\examples{
cam_get_votes(type="PL", number="1992", year="2007")
}
\author{
Robert Myles McDonnell, Guilherme Jardim Duarte & Danilo Freire.
}
