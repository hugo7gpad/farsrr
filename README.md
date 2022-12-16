
<!-- README.md is generated from README.Rmd. Please edit that file -->

# farsrr

<!-- badges: start -->
<!-- badges: end -->

The goal of farsrr is to offer tools to report and analyse accidents
data over years.The farsrr package provides functions to read, summarize
and visualize data on accidents recorded by time, date, geographical
information such as: city, state, longitude, latitude… and more.

## Installation

You can install the development version of farsrr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("hugo7gpad/farsrr")
```

## Example

This is a basic example which shows you how to read the accident report
data of the year 2014 into R :

``` r
library(farsrr)
```

Let’s find how many accidents are reported to the US NHTSA F.A.R.S’ each
month of the following years: 2013, 2014, 2015:

``` r
## Accidents reported to the US NHTSA F.A.R.S in 2013, 2014, 2015
yrs <- c(2013, 2014, 2015)

# View 2 columns MONTH, year data for each year in the list (2013, 2014, 2015)


# Number of accidents in every month of each year in the list (2013, 2014, 2015)
```

Points in the following map represent locations where accidents were
reported in the state number 33 (New York) in the year 2014
