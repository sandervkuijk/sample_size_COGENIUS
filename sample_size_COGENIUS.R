
## COGENIUS trial
##
## Aim of R-code: compute sample size for COGENIUS study
## Author: Sander van Kuijk
## 
## Formula based on Chow SC, Shao J, Wang H. Sample Size Calculation in
## Clinical Research. New York: Marcel Dekker, 2003
##
## R session Info: 
## R version 4.0.4 (2021-02-15)
## Platform: x86_64-w64-mingw32/x64 (64-bit)
## Running under: Windows >= 8 x64 (build 9200)

library(TrialSize)

# Design characteristics
alpha    <- 0.05/3
beta     <- 0.20
sigma    <- 15
k        <- c(0.5, 2)
margin   <- 10
adj.drop <- 0.9

# Sample size computation
ceiling(TwoSampleMean.Equality(alpha = alpha, beta = beta, sigma = sigma,
                               k = k, margin = margin)/adj.drop)

# The resulting smallest necessary sample sizes are 40 for the control group
# and 79 for the two intervention groups. To mitigate the effects of rounding
# during computation and subsequently slightly shifted 2:2:1 ratio, we chose
# to recruit 80 patients per intervention group.

## End of code.