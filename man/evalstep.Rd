\name{evalstep}
\alias{evalstep}
\title{Evaluate step function at a set of new time points}
\description{
Given one or more right-continuous step functions of time, given by vector
\code{time} and vector of matrix \code{stepf}, this function evaluates the
step function(s) at a vector of new time points given by \code{newtime}.
Typical application is when the step function is given by a non- or
semi-parametric estimated of cumulative hazard or survival function, and the
value of this function is required at a set of time points.}
\usage{evalstep(time, stepf, newtime, subst=-Inf, to.data.frame=FALSE)}
\arguments{
  \item{time}{A vector of time points at which the step function changes value}
  \item{stepf}{A vector (of the same length as \code{time}) or a matrix (with no
  of columns equal to the length of \code{time}) containing the values of the
  step function(s) at the time points}
  \item{newtime}{A vector of time points at which the step function(s) is/are to be
  evaluated}
  \item{subst}{A value that is substituted for elements of \code{newtime} that
  are smaller than the minimum of \code{time}. Default value is \code{-Inf}}
  \item{to.data.frame}{Determines whether the output is a data frame with the
  new time points and the values of the step function(s) (if \code{TRUE}) or a
  vector/matrix with the values of the step function(s) (if \code{FALSE} (default))}
}
\details{
The argument \code{time} should be ordered, and not contain duplicated or +/- Inf,
and should be of the same length as \code{stepf}. There are no restrictions on
ordering or duplicates of \code{newtime}. For elements of \code{newtime} that are
smaller than the minimum of \code{time}, the value of \code{subst} is substituted.}
\value{
Either a vector/matrix containing the step function(s) evaluated at the new time
points (if \code{to.data.frame=FALSE} (default)), or a data frame with column vectors
\code{newtime} containing the new time points and \code{res} containing the step
function evaluated at the new time points (if \code{to.data.frame=TRUE})
}
\author{Hein Putter \email{H.Putter@lumc.nl}}
\examples{
tm <- c(0.2,0.5,1,1.2,1.8,4)
ta <- 2*tm
data.frame(time=tm, stepf=ta)
evalstep(time=tm, stepf=ta, newtime=c(0,0.2,0.3,0.6,1,1.5,3,4,5,0.1), subst=0)
evalstep(time=tm, stepf=data.frame(ta=ta,ta2=1/ta), newtime=c(0,0.2,0.3,0.6,1,1.5,3,4,5,0.1), subst=0)
}
\keyword{univar}
