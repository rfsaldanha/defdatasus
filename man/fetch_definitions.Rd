% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fetch_definitions.R
\name{fetch_definitions}
\alias{fetch_definitions}
\title{Fetch definitions}
\usage{
fetch_definitions(information_system = c("SIM", "SINASC", "SIH"))
}
\arguments{
\item{information_system}{Health system abbreviation.}
}
\description{
Download TabWIN definitions files from DataSUS.
}
\details{
Currently, only SIM, SINASC and SIH are supported.
}
\section{Warning}{

A Internet connection is needed to use this function.
}

\examples{
\dontrun{
fetch_definitions(information_system = "SIM")
}
}
