% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sen_coalitions.R
\name{sen_coalitions}
\alias{sen_coalitions}
\title{Downloads and tidies data on the coalitions in the Federal Senate}
\usage{
sen_coalitions(members = FALSE, ascii = TRUE)
}
\arguments{
\item{members}{\code{logical}. If FALSE, returns only the first four columns
of the data frame.}

\item{ascii}{\code{logical}. If TRUE, names are converted to ascii format.}
}
\value{
A tibble, of classes \code{tbl_df}, \code{tbl} and \code{data.frame},
with variables:
\itemize{
 \item{\code{bloc_code: }}{unique code given to each coalition.}
 \item{\code{bloc_name: }}{name of the coalition.}
 \item{\code{bloc_label: }}{additional label for the coalition.}
 \item{\code{date_created: }}{\code{POSIXct}, date the coalition was created.}
 \item{\code{bloc_member_abbr: }}{party acronym.}
 \item{\code{bloc_member_name: }}{party name.}
 \item{\code{bloc_member_date_joined: }}{\code{POSIXct}, date when the party first joined the coalition.}
 \item{\code{member_date_left: }}{\code{POSIXct}, date when the party left the coalition.}
}
}
\description{
Downloads and tidies data on the coalitions in the Federal Senate.
}
\examples{
coalitions <- sen_coalitions()
coalitions_detail <- sen_coalitions(members = TRUE)
}
\author{
Robert Myles McDonnell, Guilherme Jardim Duarte & Danilo Freire.
}
