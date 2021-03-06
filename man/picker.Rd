% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aucolr.R
\name{picker}
\alias{picker}
\title{Color picker}
\usage{
picker(x = c("blue"))
}
\arguments{
\item{x}{A vector of color names as specified on the AU colors webpage. Dark versions are named "dark [color]".}
}
\value{
A vector of hex codes for the specified colors
}
\description{
Color picker, takes a vector of colornames and returns a vector of hex codes.
Defaults to AU blue.
Not case sensitive.
}
