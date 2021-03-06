% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skitools.R
\name{ra.overlaps}
\alias{ra.overlaps}
\alias{ra.setdiff}
\alias{ra.overlaps}
\title{identifies events that are in ra1 that do not exist in ra2.
Aside from ra1 and ra2, all arguments are sent to ra.overlaps}
\usage{
ra.setdiff(ra1, ra2, ...)

ra.overlaps(ra1, ra2, pad = 0, arr.ind = TRUE, ignore.strand = FALSE, ...)
}
\arguments{
\item{ra1}{\code{GRangesList} with rearrangement set 1}

\item{ra2}{\code{GRangesList} with rearrangement set 2}

\item{...}{params to be sent to \code{\link{gr.findoverlaps}}}

\item{pad}{Amount to pad the overlaps by. Larger is more permissive. Default is exact (0)}

\item{arr.ind}{Default TRUE}

\item{ignore.strand}{Ignore rearrangement orientation when doing overlaps. Default FALSE}

\item{out.file}{string Path to file in which to dump tsv}

\item{bam}{string Path to BAM file}

\item{ref}{tring Path to reference FASTA}

\item{min.bq}{integer Minimum base quality}

\item{min.mq}{integer Minimum mapping quality}

\item{indel}{boolean Flag whether to collect one off indels (default is substitution)}

\item{chunksize}{integer Number of mpileup lines to put into memory}

\item{verbose}{boolean Flag to increase verbosity (default = TRUE)}
}
\description{
identifies events that are in ra1 that do not exist in ra2.
Aside from ra1 and ra2, all arguments are sent to ra.overlaps

Determines overlaps between two piles of rearrangement junctions ra1 and ra2 (each GRangesLists of signed locus pairs)
against each other, returning a sparseMatrix that is T at entry ij if junction i overlaps junction j.

if argument pad = 0 (default) then only perfect overlap will validate, otherwise if pad>0 is given, then
padded overlap is allowed

strand matters, though we test overlap of both ra1[i] vs ra2[j] and gr.strandflip(ra2[j])

Calls samtools mpileup to dump tsv of "one off" variants / sites (i.e. that are present in exactly one read per site)
}
\note{
The denominator (i.e. total reads) is just the sum of counts$records
}
