
<!-- README.md is generated from README.Rmd. Please edit that file -->

# AveByGroup

<!-- badges: start -->
<!-- badges: end -->

The goal of AveByGroup is to calculate the average of a numeric column
based on the data set grouped by another column(s).

## Installation

You can install the development version of AveByGroup from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("liq34525/STAT545B2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(AveByGroup)
test1 <- average(palmerpenguins::penguins,"year",body_mass_g, TRUE)  
test1
#> # A tibble: 3 x 2
#>    year  mean
#>   <int> <dbl>
#> 1  2007 4125.
#> 2  2008 4267.
#> 3  2009 4210.
```

You can also group multiple columns:

``` r
library(AveByGroup)
test2 <- average(palmerpenguins::penguins,c("year","island"),body_mass_g, TRUE)  
test2
#> # A tibble: 9 x 3
#> # Groups:   year [3]
#>    year island     mean
#>   <int> <fct>     <dbl>
#> 1  2007 Biscoe    4741.
#> 2  2007 Dream     3684.
#> 3  2007 Torgersen 3763.
#> 4  2008 Biscoe    4628.
#> 5  2008 Dream     3779.
#> 6  2008 Torgersen 3856.
#> 7  2009 Biscoe    4793.
#> 8  2009 Dream     3691.
#> 9  2009 Torgersen 3489.
```
