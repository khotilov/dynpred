\name{AUCw}
\alias{AUCw}
\title{Calculate dynamic AUC(t) curve}
\description{
Calculate dynamic model-free curve of Area Under the Curve values over time,
based on the dynamic/xxxx AUC of Heagerty and Zheng.}
\usage{AUCw(formula,data,width)}
\arguments{
  \item{formula}{Formula for prediction model to be used as in
  \code{\link[survival:coxph]{coxph}}}
  \item{data}{Data set in which to interpret the formula}
  \item{width}{Width of the window}
}
\value{
A data frame with columns
\item{time}{The time points t at which AUCw(t) changes value (either t or
t+width is an event time point)}
\item{AUCw}{The AUCw(t) function}
and with attribute \code{"width"} given as input.
}
\references{
van Houwelingen HC, Putter H (2011). Dynamic Prediction in Clinical Survival Analysis.
Chapman & Hall.
}
\author{Hein Putter \email{H.Putter@lumc.nl}}
\examples{
data(ova)
AUCw(Surv(tyears, d) ~ Karn + Broders + FIGO + Ascites + Diam, data = ova,
  width = 2)
}
\keyword{univar}
