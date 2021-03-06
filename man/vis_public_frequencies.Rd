% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis.R
\name{vis_public_frequencies}
\alias{vis_public_frequencies}
\title{Public repertoire visualisation}
\usage{
vis_public_frequencies(
  .data,
  .by = NA,
  .meta = NA,
  .type = c("boxplot", "none", "mean")
)
}
\arguments{
\item{.data}{Public repertoire - an output from the \link{pubRep} function.}

\item{.by}{Pass NA if you want to plot samples without grouping.

You can pass a character vector with one or several column names from ".meta"
to group your data before plotting. In this case you should provide ".meta".

You can pass a character vector that exactly matches the number of samples in
your data, each value should correspond to a sample's property. It will be used
to group data based on the values provided. Note that in this case you should
pass NA to ".meta".}

\item{.meta}{A metadata object. An R dataframe with sample names and their properties,
such as age, serostatus or hla.}

\item{.type}{Character. Either "boxplot" for plotting distributions of frequencies,
"none" for plotting everything, or "mean" for plotting average values only.}
}
\description{
Visualise public clonotype frequencies.
}
\examples{
\dontrun{
pr = pubRep(immdata$data)
vis(pr, "freq")
vis(pr, "freq", .type="boxplot")
vis(pr, "freq", .type="none")
vis(pr, "freq", .type="mean")
vis(pr, "freq", .by = "Status", .meta=immdata$meta)
}
}
