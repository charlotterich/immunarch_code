% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tools.R
\name{top}
\alias{top}
\title{Get the N most abundant clonotypes}
\usage{
top(.data, .n = 10)
}
\arguments{
\item{.data}{The data to be processed. Can be \link{data.frame},
\link{data.table}, or a list of these objects.

Every object must have columns in the immunarch compatible format.
\link{immunarch_data_format}

Competent users may provide advanced data representations:
DBI database connections, Apache Spark DataFrame from \link{copy_to} or a list
of these objects. They are supported with the same limitations as basic objects.

Note: each connection must represent a separate repertoire.}

\item{.n}{Numeric. Number of the most abundant clonotypes to return.}
}
\value{
Data frame with the \code{.n} most abundant clonotypes only.
}
\description{
Get the N most abundant clonotypes
}
\concept{preprocessing}
