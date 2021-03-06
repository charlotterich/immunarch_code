% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{repLoad}
\alias{repLoad}
\title{Load repertoire files to the workspace}
\usage{
repLoad(.path, .format = NA)
}
\arguments{
\item{.path}{A character string specifying the path to the input data.
Input data can be one of the following:

- a single repertoire file.
In this case \code{repLoad} returns an R \link{data.frame};

- a vector of paths to repertoire files.
Same as in the case with no metadata file presented in the next section below;

- a path to the folder with repertoire files and, if available, metadata file "metadata.txt".
If the metadata file if presented, then the \code{repLoad} returns a list with two elements "data" and "meta".
"data" is an another list with repertoire R \link{data.frame}s. "meta" is a data frame with the metadata.
If the metadata file "metadata.txt" is not presented, then the \code{repLoad} creates a dummy metadata file with
sample names and returns a list with two elements "data" and "meta".
If input data has multiple chains or cell types stored in the same file
(for example, like in 10xGenomics repertoire files), such repertoire files will be splitted to different
R data frames with only one type of chain and cell presented. The metadata file will have additional columns specifying
cell and chain types for different samples.}

\item{.format}{A character string specifying what format to use. See "Details" for more information on supported formats.

Leave NA (which is default) if you want `immunarch` to detect formats automatically.}
}
\value{
A list with two named elements:

 - "data" is a list of input samples;

  - "meta" is a data frame with sample metadata.
}
\description{
The \code{repLoad} function loads repertoire files
into R workspace in the immunarch format where you can immediately use them for
the analysis. \code{repLoad} automatically detects the right format for
your files, so all you need is simply provide the path to your files.

See "Details" for more information on supported formats. See "Examples" for
diving right into it.
}
\details{
The metadata has to be a tab delimited file with first column named "Sample".
It can have any number of additional columns with arbitrary names.
The first column should contain base names of files without extensions in
your folder. Example:
\tabular{llll}{
 Sample \tab Sex \tab Age \tab Status\cr
 immunoseq_1 \tab M \tab 1 \tab C\cr
 immunoseq_2 \tab M \tab 2 \tab C\cr
 immunoseq_3 \tab F \tab 3 \tab A
}

\code{repLoad} has the ".format" argument that sets the format for input repertoire files.
Do not pass it if you want immunarch to detect the formats and parse files automatically!
In case you want to force the package to parse the data in a specific format,
you can choose one of the several options for the argument:

- "immunoseq" - ImmunoSEQ of any version. http://www.adaptivebiotech.com/immunoseq

- "mitcr" - MiTCR. https://github.com/milaboratory/mitcr

- "mixcr" - MiXCR of any version. https://github.com/milaboratory/mixcr

- "migec" - MiGEC. http://migec.readthedocs.io/en/latest/

- "migmap" - For parsing IgBLAST results postprocessed with MigMap. https://github.com/mikessh/migmap

- "tcr" - tcR, our previous package. https://imminfo.github.io/tcr/

- "vdjtools" - VDJtools of any version. http://vdjtools-doc.readthedocs.io/en/latest/

- "imgt" - IMGT HighV-QUEST. http://www.imgt.org/HighV-QUEST/

- "airr" - adaptive immune receptor repertoire (AIRR) data format. http://docs.airr-community.org/en/latest/datarep/overview.html

- "10x" - 10XGenomics clonotype annotations tables. https://support.10xgenomics.com/single-cell-vdj/software/pipelines/latest/output/annotation

- "archer" - ArcherDX clonotype tables. https://archerdx.com/
}
\examples{
\dontrun{
# To load the data from a single file without specifying the data format:
immdata <- repLoad("path/to/your/folder/immunoseq_1.txt")
# To load the data from a single ImmunoSEQ file, go with:
immdata <- repLoad("path/to/your/folder/immunoseq_1.txt", .format = "immunoseq")

# Suppose you have a following structure in your folder:
# >_ ls
# immunoseq1.txt
# immunoseq2.txt
# immunoseq3.txt
# metadata.txt

# To load the whole folder with every file in it type:
immdata <- repLoad("path/to/your/folder/")

# We recommend creating a metadata file named exactly "metadata.txt" in the folder.

# In that case, when you load your data you will see:
# > immdata <- repLoad("path/to/your/folder/")
# > names(immdata)
# [1] "data" "meta"

# If you do not have "metadata.txt", you will see the same output,
# but your metadata will be almost empty:
# > immdata <- repLoad("path/to/your/folder/")
# > names(immdata)
# [1] "data" "meta"
}

}
\seealso{
\link{immunr_data_format} for immunarch data format; \link{repSave} for file saving;
\link{repOverlap}, \link{geneUsage} and \link{repDiversity} for starting with immune repertoires basic statistics.
}
