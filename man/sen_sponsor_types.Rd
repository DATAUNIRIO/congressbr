% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sen_sponsor_list.R
\name{sen_sponsor_types}
\alias{sen_sponsor_types}
\title{Downloads and tidies data on the types of bill sponsors in the
Federal Senate}
\usage{
sen_sponsor_types(ascii = TRUE)
}
\arguments{
\item{ascii}{(\code{logical}). If TRUE, bill sponsor names are converted
to ascii format, stripping the latin characters from the names.}
}
\value{
A tibble, of classes \code{tbl_df}, \code{tbl} and \code{data.frame},
with variables:
\itemize{
 \item{\code{sponsor_abbr: }}{Abbreviation of sponsor type name.}
 \item{\code{sponsor_name: }}{Sponsor type name.}
}
}
\description{
Downloads and tidies data on the types of bill sponsors in the
Federal Senate.
}
\examples{
types <- sen_sponsor_types()
}
\author{
Robert Myles McDonnell, Guilherme Jardim Duarte & Danilo Freire.
}
