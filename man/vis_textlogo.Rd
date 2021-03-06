% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis.R
\name{vis_textlogo}
\alias{vis_textlogo}
\alias{vis_seqlogo}
\title{Sequence logo plots for amino acid profiles.}
\usage{
vis_textlogo(.data, .replace.zero.with.na = T, .width = 0.1, ...)

vis_seqlogo(.data, .scheme = "chemistry", ...)
}
\arguments{
\item{.data}{Output from the \code{kmer.profile} function.}

\item{.replace.zero.with.na}{if T then replace all zeros with NAs, therefore letters with
zero frequency wont appear at the plot.}

\item{.width}{Width for jitter, i.e., how much points will scatter around the verical line. Pass 0 (zero)
to plot points on the straight vertical line for each position.}

\item{...}{Not used here.}

\item{.scheme}{Character. An argumentt passed to \link{geom_logo} specifying how to colour symbols.}
}
\value{
ggplot2 object
}
\description{
Plot sequence logo plots for visualising of amino acid motif sequences / profiles.

`vis_textlogo` plots sequences in a text format - each letter has the same height. Useful when there
are no big differences between occurences of amino acids in the motif.

`vis_seqlogo` is a traditional sequence logo plots. Useful when there are one or two amino acids
with clear differences in their occurrences.
}
\examples{
\dontrun{
data(immdata)
kmers = getKmers(immdata$data[[1]], 5)
ppm = kmer_profile(kmers, "prob")
vis(ppm, .plot="text")
vis(ppm, .plot="seq")

d <- kmer_profile(c('CASLL', 'CASSQ', 'CASGL'))
vis_textlogo(d)
vis_seqlog(d)
}
}
\seealso{
\link{getKmers}, \link{kmer_profile}
}
