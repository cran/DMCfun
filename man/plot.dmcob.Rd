% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.dmcob}
\alias{plot.dmcob}
\title{plot.dmcob: Plot observed data}
\usage{
\method{plot}{dmcob}(
  x,
  figType = "summary",
  subject = NULL,
  labels = c("Compatible", "Incompatible"),
  cols = c("green", "red"),
  errorBars = FALSE,
  errorBarType = "sd",
  ylimRt = NULL,
  ylimErr = NULL,
  xlimCDF = NULL,
  ylimCAF = NULL,
  cafBinLabels = FALSE,
  ylimDelta = NULL,
  xlimDelta = NULL,
  xlabs = TRUE,
  ylabs = TRUE,
  xaxts = TRUE,
  yaxts = TRUE,
  xylabPos = 2,
  resetPar = TRUE,
  legend = TRUE,
  ...
)
}
\arguments{
\item{x}{Output from dmcObservedData}

\item{figType}{summary, rtCorrect, errorRate, rtErrors, cdf, caf, delta, deltaErrors, deltaER, all}

\item{subject}{NULL (aggregated data across all subjects) or integer for subject number}

\item{labels}{Condition labels c("Compatible", "Incompatible") default}

\item{cols}{Condition colours c("green", "red") default}

\item{errorBars}{TRUE(default)/FALSE Plot errorbars}

\item{errorBarType}{sd(default), or se}

\item{ylimRt}{ylimit for Rt plots}

\item{ylimErr}{ylimit for error rate plots}

\item{xlimCDF}{xlimit for CDF plot}

\item{ylimCAF}{ylimit for CAF plot}

\item{cafBinLabels}{TRUE/FALSE}

\item{ylimDelta}{ylimit for delta plot}

\item{xlimDelta}{xlimit for delta plot}

\item{xlabs}{TRUE/FALSE}

\item{ylabs}{TRUE/FALSE}

\item{xaxts}{TRUE/FALSE}

\item{yaxts}{TRUE/FALSE}

\item{xylabPos}{2}

\item{resetPar}{TRUE/FALSE Reset graphical parameters}

\item{legend}{TRUE/FALSE (or FUNCTION) plot legend on each plot}

\item{...}{additional plot pars}
}
\value{
Plot (no return value)
}
\description{
Plot results from the output of dmcObservedData. The plot
can be an overall summary, or individual plots (rtCorrect, errorRate,
rtErrors, cdf, caf, delta, deltaErrors, all).
}
\examples{
\donttest{
# Example 1 (real dataset)
plot(flankerData)
plot(flankerData, errorBars = TRUE, errorBarType = "se")
plot(flankerData, figType = "delta")
plot(flankerData, figType = "caf")

# Example 2 (real dataset)
plot(simonData)
plot(simonData, errorBars = TRUE, errorBarType = "se")
plot(simonData, figType = "delta", errorBars = TRUE, errorBarType = "sd")

# Example 3 (simulated dataset)
dat <- createDF(nSubjects = 50, nTrl = 50,
                design = list("Comp" = c("comp", "incomp")))
dat <- addDataDF(dat,
                 RT = list("Comp_comp"   = c(420, 100, 80),
                           "Comp_incomp" = c(470, 100, 95)),
                 Error = list("Comp_comp"   = c(5, 3, 2, 1, 2),
                              "Comp_incomp" = c(15, 8, 4, 2, 2)))
datOb <- dmcObservedData(dat)
plot(datOb, errorBars = TRUE, errorBarType = "sd")

# Example 4 (simulated dataset)
dat <- createDF(nSubjects = 50, nTrl = 50,
                design = list("Comp" = c("comp", "incomp")))
dat <- addDataDF(dat,
                 RT = list("Comp_comp"   = c(420, 100, 150),
                           "Comp_incomp" = c(470, 100, 120)),
                 Error = list("Comp_comp"   = c(5, 3, 2, 1),
                              "Comp_incomp" = c(15, 8, 4, 2)))
datOb <- dmcObservedData(dat, nCAF = 4)
plot(datOb)
}

}
