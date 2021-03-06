\name{Fwindow}
\alias{Fwindow}
\title{Calculate dynamic "death within window" curve}
\description{
Calculate dynamic "death within window" curve, in other words, one minus
fixed width conditional survival curves, defined as P(T<=t+w|T>t), for
a fixed window width w.
}
\usage{Fwindow(object, width, variance=TRUE, conf.level=0.95)}
\arguments{
  \item{object}{\code{\link[survival:survfit]{survfit}} object, use type="aalen"}
  \item{width}{Width of the window}
  \item{variance}{Boolean (default=\code{TRUE}); should pointwise confidence
  interval of the probabilities be calculated?}
  \item{conf.level}{The confidence level, between 0 and 1 (default=0.95)}
}
\details{
"Die within window function" with window w, Fw(t) = P(T<=t+w|T>t), evaluated at
all time points t where the estimate changes value, and associated pointwise
confidence intervals (if \code{variance}=\code{TRUE}).

Both estimate and pointwise lower and upper confidence intervals are based on the
negative exponential of the Nelson-Aalen estimate of the cumulative hazard, so
P(T<=t+w|T>t) is estimated as exp(- int_t^{t+w} hat{H}_{NA}(s) ds), with
hat{H}_{NA} the non-parametric Nelson-Aalen estimate.
                                                                                    
Note: in \code{object}, no event time points at or below zero allowed
}
\value{
A data frame with columns
\item{time}{The time points t at which Fw(t) changes value (either t or
t+width is an event time point)}
\item{Fw}{The Fw(t) function}
\item{low}{Lower end of confidence interval}
\item{up}{Upper end of confidence interval}
and with attribute \code{"width"} as given as input.
}
\references{
van Houwelingen HC, Putter H (2011). Dynamic Prediction in Clinical Survival Analysis.
Chapman & Hall.
}
\author{Hein Putter \email{H.Putter@lumc.nl}}
\examples{
data(wbc1)
c0 <- coxph(Surv(tyears, d) ~ 1, data = wbc1, method="breslow")
sf0 <- survfit(c0)
Fw <- Fwindow(sf0,4)
}
\keyword{univar}
