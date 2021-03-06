% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skitools.R
\name{gatk_haplotypecaller}
\alias{gatk_haplotypecaller}
\title{gatk_haplotypecaller}
\usage{
gatk_haplotypecaller(outdir, bams, intervals = NULL,
  dbsnp = Sys.getenv("GATK.DBSNP"), hg = Sys.getenv("GATK.FASTA"),
  genome = "hg19", outroot = "out", stand_call_conf = 30,
  stand_emit_conf = 2, min_mapq = 20, other.args = "", run = F,
  verbose = T, write_bam = F, oncotate = T)
}
\arguments{
\item{outdir}{out directory to output to}

\item{bams}{bams to run variant calling on}

\item{intervals}{GRanges intervals to run haplotype caller on}

\item{dbsnp}{dbSNP path (=Sys.getenv('GATK.DBSNP'))}

\item{hg}{genome fasta location (=Sys.getenv('GATK.FASTA'))}

\item{genome}{name of genome build (='hg19')}

\item{outroot}{prefix to give output files (='out')}

\item{stand_call_conf}{confidence for calls (=30)}

\item{stand_emit_conf}{confience for emission (=30)}

\item{min_mapq}{minimum mapping quality (=20)}

\item{run}{logical flag whether to run immediately or just return character vector of command (= FALSE)}

\item{verbose}{logical flag (=TRUE)}

\item{write_bam}{logical flag whether to write the bam (=FALSE)}

\item{oncotate}{logical flag whether to oncotate output into MAF files (=TRUE)}

\item{other.arg}{other arguments to give to haplotype caller (='')}
}
\value{
character vector of command(s) (only if run = FALSE), otherwise just runs command with system call.
}
\description{
calls haplotype caller on a set of input bams and a given set of targets,
outputting to target.dir

intervals are given as GRanges
}
\author{
Marcin Imielinski
}
