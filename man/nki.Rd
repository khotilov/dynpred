\name{NKI breast cancer clinical data}

\docType{data}

\alias{nki}

\title{Clinical and follow-up data of breast cancer patients as collected in
the Dutch Cancer Institute (NKI) in Amsterdam}

\description{A data frame of 295 patients with breast cancer.
The included variables are
  \describe{
  \item{patnr}{Patient identification number}
  \item{d}{Survival status; 1 = death; 0 = censored}
  \item{tyears}{Time in years until death or last follow-up}
  \item{diameter}{Diameter of the primary tumor}
  \item{posnod}{Number of positive lymph nodes}
  \item{age}{Age of the patient}
  \item{mlratio}{Estrogen level?}
  \item{chemotherapy}{Chemotherapy used (yes/no)}
  \item{hormonaltherapy}{Hormonal therapy used (yes/no)}
  \item{typesurgery}{Type of surgery (excision or mastectomy)}
  \item{histolgrade}{Histological grade (Intermediate, poorly, or well
  differentiated)}
  \item{vasc.invasion}{Vascular invasion (-, +, or +/-)}
  \item{crossval.clin.class}{??}
  \item{PICV}{Estrogen level?}
  }
}

\usage{data(nki)}

\format{A data frame, see \code{\link{data.frame}}.}

\references{
van't Veer LJ, Dai HY, van de Vijver MJ, He YDD, Hart AAM, Mao M, Peterse HL,
van der Kooy K, Marton MJ, Witteveen AT, Schreiber GJ, Kerkhoven RM, Roberts C,
Linsley PS, Bernards R \& Friend SH (2002). Gene expression profiling predicts
clinical outcome of breast cancer. \emph{Nature} \bold{415}, 530--536.

van de Vijver MJ, He YD, van `t Veer LJ, Dai H, Hart AAM, Voskuil DW,
Schreiber GJ, Peterse JL, Roberts C, Marton MJ, Parrish M, Atsma D, Witteveen A,
Glas A, Delahaye L, van der Velde T, Bartelink H, Rodenhuis S, Rutgers ET,
Friend SH \& Bernards R (2002). A gene-expression signature as a predictor of
survival in breast cancer. \emph{New England Journal of Medicine} \bold{347},
1999--2009.

van Houwelingen HC, Bruinsma T, Hart AAM, van't Veer LJ \& Wessels LFA (2006). 
Cross-validated Cox regression on microarray gene expression data.
\emph{Statistics in Medicine} \bold{25}, 3201--3216.
}

\keyword{datasets}