% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RegStab.R
\name{rsa}
\alias{rsa}
\title{Regression Stability Analysis}
\usage{
rsa(trait, geno, env, rep, data, maxp = 0.05)
}
\arguments{
\item{trait}{The trait to analyze.}

\item{geno}{The genotypes.}

\item{env}{The environments.}

\item{rep}{The replications or blocks.}

\item{data}{The name of the data frame containing the data.}

\item{maxp}{Maximum allowed proportion of missing values to estimate, defaults to 5\%.}
}
\value{
It returns the regression stability analysis for genotypes and environments.
It also returns the coefficient of variation.
}
\description{
Function to run the regression stability analysis (Yates and Cochran, 1938,
Finlay and Wilkinson, 1963). This implementation follows the formulas of
Eberhart and Russell (1966).
}
\details{
The regression stability analysis is evaluated with a balanced data set.
If data is unbalanced, missing values are estimated up to an specified maximum proportion,
5\% by default.
To run a regression stability analysis you need a set of genotypes evaluated in a set of
environments. At least 3 genotypes or environments are needed. In a regression stability
analysis for genotypes grown at several environments, for each genotype a simple linear
regression of individual yield (Y) on the mean yield of all genotypes for each environment
(X) is fitted. In a similar way, for each environment, a simple linear regression of
individual yield (Y) on the mean yield of all environments for each genotype (X) is fitted.
}
\examples{
# The data
head(met8x12)
str(met8x12)

# Run regression stability analysis
rsa("y", "geno", "env", "rep", met8x12)
}
\author{
Raul Eyzaguirre
}
\references{
Eberhart, S. A. and Russell, W. A. (1966). Stability Parameters for Comparing Varieties.
Crop Sci. 6: 36-40.

Finlay, K. W., and Wilkinson, G. N. (1963). The Analysis of Adaption in a Plant-Breeding Programme.
Aust. J. Agric. Res. 14: 742-754.

Yates, F., and Cochran, W. G. (1938). The Analysis of Group Experiments.
J. Agric. Sci. 28: 556-580.
}

