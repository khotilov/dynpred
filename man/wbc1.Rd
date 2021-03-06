\name{WBC follow-up data}

\docType{data}

\alias{wbc1}

\title{Data from the Benelux CML study}

\description{A data frame of 210 patients with Chronic Myeloid Leukemia from the
Benelux CML study (Kluin-Nelemans et al. 1998). Data have been used in two
methodological papers, de Bruijne et al. (2001) and van Houwelingen (2007), and
in the book van Houwelingen \& Putter (2011), especially Chapter 8. More
background is given in Appendix A.2 of van Houwelingen \& Putter (2011). Interest
is in the time-dependent covariate White Blood Cell count (WBC). Data set
wbc1 contains the follow-up data and time-fixed covariates, while
\code{\link{wbc2}} contains the WBC measurements.
The included variables in wbc1 are
  \describe{
  \item{patnr}{Patient identification number}
  \item{tyears}{Time in years from randomization to death or last follow-up}
  \item{d}{Survival status; 1 = dead, 0 = censored}
  \item{sokal}{Clinical index based on spleen size, percentage of circulating
  blasts, platelet and age at diagnosis}
  \item{age}{Age at diagnosis}
  }
}

\usage{data(wbc1)}

\format{A data frame, see \code{\link{data.frame}}.}

\references{
Kluin-Nelemans JC, Delannoy A, Louwagie A, le Cessie S, Hermans J,
van der Burgh JF, Hagemeijer AM, van den Berghe H \& Benelux CML Study Group
(1998). Randomized study on hydroxyurea alone versus hydroxyurea combined with
low-dose interferon-alpha 2b for chronic myeloid leukemia. \emph{Blood}
\bold{91}, 2713--2721.

de Bruijne MHJ, le Cessie S, Kluin-Nelemans HC \& van Houwelingen HC (2001).
On the use of Cox regression in the presence of an irregularly observed
time-dependent covariate. \emph{Statistics in Medicine} \bold{20}, 3817--3829.

van Houwelingen HC (2007). Dynamic prediction by landmarking in event history
analysis. \emph{Scandinavian Journal of Statistics} \bold{34}, 70--85.

van Houwelingen HC, Putter H (2011). Dynamic Predicting in Clinical Survival
Analysis. Chapman \& Hall.
}

\keyword{datasets}
