\name{Eplot-package}
\alias{Eplot-package}
\alias{Eplot}
\docType{package}
\title{
Plotting longitudinal series. 
}
\description{
The aim is to adjust the graphical parameters to create nicer longitudinal series plots. The default set of graphical parameters is very general, and can be improved upon when we are interested in plotting data points observed over time. Functions facilitate plotting those kind of series, univariate plots, bivariate plots (with vertical axis on both left and right hand sides), multivariate plots and plots which allow to examine whether a new observation is 'unusual' via construction and visualization of prediction intervals around it.
}
\details{
\tabular{ll}{
Package: \tab Eplot\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-07-30\cr
License: \tab GPL-2 \cr
}
The idea is to adjust defult graphical parameters to create nicer longitudinal series plots. The user have the choice to keep the new set of graphical parameters or to revert to the initial set of graphical parameters. Other functions include multivariate plot, plot with  vertical axis on both left and right hand sides, and plot which superimpose prediction intervals from an AR-ARCH model. 
}
\author{
Eran Raviv

Maintainer: Eran Raviv 

\email{eeraviv@gmail.com}
}




\examples{
par(mfrow = c(2,1))
out <- FCIplot(rnorm(100),plott=TRUE,k=30)
plott(out,main="The out-of-sample standard deviation") 
}
