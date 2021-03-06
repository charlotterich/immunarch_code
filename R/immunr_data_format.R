#' Specification of the data format used by immunarch dataframes.
#'
#' @name immunr_data_format
#'
#' @aliases immunr_data_format immunarch_data_format
#'
#' @description
#'
#' - "Clones" - number of barcodes (events, UMIs) or reads;
#'
#' - "Proportion" - proportion of barcodes (events, UMIs) or reads;
#'
#' - "CDR3.nt" - CDR3 nucleotide sequence;
#'
#' - "CDR3.aa" - CDR3 amino acid sequence;
#'
#' - "V.name" - names of aligned Variable gene segments;
#'
#' - "D.name" - names of aligned Diversity gene segments or NA;
#'
#' - "J.name" - names of aligned Joining gene segments;
#'
#' - "V.end" - last positions of aligned V gene segments (1-based);
#'
#' - "D.start" - positions of D'5 end of aligned D gene segments (1-based);
#'
#' - "D.end" - positions of D'3 end of aligned D gene segments (1-based);
#'
#' - "J.start" - first positions of aligned J gene segments (1-based);
#'
#' - "VJ.ins" - number of inserted nucleotides (N-nucleotides) at V-J junction (-1 for receptors with VDJ recombination);
#'
#' - "VD.ins" - number of inserted nucleotides (N-nucleotides) at V-D junction (-1 for receptors with VJ recombination);
#'
#' - "DJ.ins" - number of inserted nucleotides (N-nucleotides) at D-J junction (-1 for receptors with VJ recombination);
#'
#' - "Sequence" - full nucleotide sequence.
#'
NULL

# Immunarch column names
IMMCOL = new.env()

IMMCOL$count  = "Clones"
IMMCOL$prop   = "Proportion"
IMMCOL$cdr3nt = "CDR3.nt"
IMMCOL$cdr3aa = "CDR3.aa"
IMMCOL$v      = "V.name"
IMMCOL$d      = "D.name"
IMMCOL$j      = "J.name"
IMMCOL$ve     = "V.end"
IMMCOL$ds     = "D.start"
IMMCOL$de     = "D.end"
IMMCOL$js     = "J.start"
IMMCOL$vnj    = "VJ.ins"
IMMCOL$vnd    = "VD.ins"
IMMCOL$dnj    = "DJ.ins"
IMMCOL$seq    = "Sequence"
IMMCOL$order  = c(IMMCOL$count, IMMCOL$prop, IMMCOL$cdr3nt, IMMCOL$cdr3aa,
                  IMMCOL$v, IMMCOL$d, IMMCOL$j,
                  IMMCOL$ve, IMMCOL$ds, IMMCOL$de, IMMCOL$js,
                  IMMCOL$vnj, IMMCOL$vnd, IMMCOL$dnj, IMMCOL$seq)
IMMCOL$type   = c("numeric", "numeric", "character", "character",
                  "character", "character", "character",
                  "integer", "integer", "integer", "integer",
                  "integer", "integer", "integer", "character")

IMMUNR_ERROR_NOT_IMPL = "ERROR: not implemented yet. Please contact us via support@immunomind.io if you need it in your research."
