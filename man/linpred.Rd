% Generated by roxygen2 (4.0.1): do not edit by hand
\name{linpred}
\alias{linpred}
\title{linpred}
\usage{
linpred(y, x, h = 1, wind = NULL, rr = c("Rec"))
}
\arguments{
\item{y}{a series to be predicted}

\item{x}{a numeric or matrix of explanatory variables}

\item{h}{The horizon for which you would like to have the prediction for
(see details)}

\item{wind}{the size of the rolling window or the initial training period if
recursive is used}

\item{rr}{recursive or rolling window? Possible values are
\code{c("Rec","Rol")}}
}
\value{
vector of prediction values with the same dimension as the original
series. The first \code{wind} values are NA's
}
\description{
Provides linear regression based predictions from a \code{y~x} type model
using recursive or rolling regression.
}
\details{
The training is done using the direct method: \eqn{y_{1 : (t+h-1)} = \beta
x_{1:(t-1)} + \varepsilon_{1:(t+h-1)} } and the forecast is made at time
(t+h) as \eqn{\widehat{y}_{t+h} = \widehat{\beta} x_t}.
}
\examples{
x = rnorm(100)
lx <- lagmat(x,2)
tail(lx)
tail(x)
out <- linpred(x,lx)
plott(x, return.to.default=FALSE)
plott(out,add=TRUE,col=2)
}

