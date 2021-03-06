% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/baytsDD.R
\name{baytsDD}
\alias{baytsDD}
\title{baytsDD}
\usage{
baytsDD(tsL = list(NULL, ...), pdfsdL = list(), distNFL = list(),
  start_history = NULL, end_history = NULL, start, end = NULL,
  formulaL = list(), orderL = list(), bwf = c(0.1, 0.9), chi = 0.9,
  PNFmin = 0.5, residuals = FALSE)
}
\arguments{
\item{tsL}{list of object(s) of class \code{\link{ts}}.}

\item{pdfsdL}{list of msdl object(s) describing the modulation of the sd of F and NF sd(F),sd(NF),mean(NF) (e.g. 2,2,-4)}

\item{distNFL}{list of "distNF" object(s) describing the mean and sd of the NF distribution in case no data driven way to derive the NF distribution is wanted; default=NULL}

\item{start_history}{Start date of history period used to model the seasonality and derive F and NF PDFs. Default=NULL (start of input time series)}

\item{end_history}{End date of history period used to model the seasonality and derive F and NF PDFs. Default=NULL (Start of the monitoring period is used)}

\item{start}{Start date of monitoring period. Default=NULL (start of input time series)}

\item{end}{End date of monitoring period. Default=NULL (start of input time series)}

\item{formulaL}{list of formula for the regression model. The default is "response ~ harmon", i.e., a harmonic season component without trend component: "response ~ trend + harmon"; With trend: Other specifications are possible using all terms set up by bfastpp, i.e., season (seasonal pattern with dummy variables), lag (autoregressive terms), slag (seasonal autoregressive terms), or xreg (further covariates). See bfastpp for details.}

\item{bwf}{block weighting function to truncate the NF probability; Default=c(0.1,0.9); (c(0,1) = no truncation)}

\item{chi}{Threshold of Pchange at which the change is confirmed; Default=0.5}

\item{PNFmin}{threshold of pNF above which the first observation is flagged; Default=0.5}

\item{residuals}{TRUE = output are time series of deseasonalised "residuals"; FALSE = time series of deseasonalised values}

\item{order}{list ofnumeric. Order of the harmonic term, defaulting to 3.}
}
\value{
List of 7 output paramter.
(1) data_tspp: "data_tspp" time series data frame
(2) bayts: "bayts" time series data frame
(3) pdf: pdfs for forest and non-forest
(4) flag: time at which unconfirmed change got flagged;
(5) change.flagged: time at which confirmed change got flagged;
(6) change.confirmed: time at which change is confirmed;
(7) oldflag: time of earlier flagged but not confirmed changes;
(8) vchange: vector of time steps from time at which change got flagged until confirmation;
(9) vflag: vector of time steps at which unconfirmed change is flaged
}
\description{
(i) deseasonalising time series using harmonic model fitting , (ii) deriving F and NF pdfs in data driven way and (iii) run bayts to detect forest chang
}
\author{
Johannes Reiche (Wageningen University)
}

