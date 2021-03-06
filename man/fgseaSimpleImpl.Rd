% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgsea.R
\name{fgseaSimpleImpl}
\alias{fgseaSimpleImpl}
\title{Runs preranked gene set enrichment analysis for preprocessed input data.}
\usage{
fgseaSimpleImpl(
  pathwayScores,
  pathwaysSizes,
  pathwaysFiltered,
  leadingEdges,
  permPerProc,
  seeds,
  toKeepLength,
  stats,
  BPPARAM,
  scoreType
)
}
\arguments{
\item{pathwayScores}{Vector with enrichment scores for the `pathways`.}

\item{pathwaysSizes}{Vector of pathways sizes.}

\item{pathwaysFiltered}{Filtered pathways.}

\item{leadingEdges}{Leading edge genes.}

\item{permPerProc}{Parallelization parameter for permutations.}

\item{seeds}{Seed vector}

\item{toKeepLength}{Number of `pathways` that meet the condition for `minSize` and `maxSize`.}

\item{stats}{Named vector of gene-level stats. Names should be the same as in 'pathways'}

\item{BPPARAM}{Parallelization parameter used in bplapply.}

\item{scoreType}{This parameter defines the GSEA score type. Possible options are ("std", "pos", "neg")
Can be used to specify cluster to run. If not initialized explicitly or
by setting `nproc` default value `bpparam()` is used.}
}
\value{
A table with GSEA results. Each row corresponds to a tested pathway.
The columns are the following:
\itemize{
 \item pathway -- name of the pathway as in `names(pathway)`;
 \item pval -- an enrichment p-value;
 \item padj -- a BH-adjusted p-value;
 \item ES -- enrichment score, same as in Broad GSEA implementation;
 \item NES -- enrichment score normalized to mean enrichment of random samples of the same size;
 \item nMoreExtreme` -- a number of times a random gene set had a more
     extreme enrichment score value;
 \item size -- size of the pathway after removing genes not present in `names(stats)`.
 \item leadingEdge -- vector with indexes of leading edge genes that drive the enrichment, see \url{http://software.broadinstitute.org/gsea/doc/GSEAUserGuideTEXT.htm#_Running_a_Leading}.
}
}
\description{
Runs preranked gene set enrichment analysis for preprocessed input data.
}
