% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linearWeight.R
\docType{methods}
\name{linearWeight}
\alias{linearWeight}
\title{Linear weight function}
\usage{
linearWeight(a, b = 0)
}
\arguments{
\item{a}{numeric. The slop of the line.}

\item{b}{numeric. The intercept of the line.}
}
\value{
An \code{\link[base]{function}} object.
}
\description{
Builds a linear time weight 
function to compute the TWDTW local cost matrix [1].
}
\details{
The linear \code{linearWeight} and \code{logisticWeight} weight functions 
can be passed to \code{\link[dtwSat]{twdtwApply}} through the argument \code{weight.fun}.
This will add a time-weight to the dynamic time warping analysis. The time weight 
creates a global constraint useful to analyse time series with phenological cycles
of vegetation that are usually bound to seasons. In previous studies by [1] the 
logistic weight had better results than the linear for land cover classification. 
See [1] for details about the method.
}
\examples{
lin_fun = linearWeight(a=0.1)
lin_fun

}
\references{
[1] Maus  V,  Camara  G,  Cartaxo  R,  Sanchez  A,  Ramos  FM,  de Queiroz, GR.
(2016). A Time-Weighted Dynamic Time Warping method for land use and land cover 
mapping. Selected Topics in Applied Earth Observations and Remote Sensing, 
IEEE Journal of, vol.PP, no.99, pp.1-11.
}
\seealso{
\code{\link[dtwSat]{twdtwApply}}
}
\author{
Victor Maus, \email{vwmaus1@gmail.com}
}
