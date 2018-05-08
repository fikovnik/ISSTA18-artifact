library(testthat)

.Random.seed <<- .ext.seed

test_that("sFriedman", {
    expect_equal(SuppDists:::sFriedman(r = 5, N = 10), list(title = "Friedman's chi-square", r = 5, N = 10, Mean = 4, Median = 3.52, 
        Mode = 2.20472440944882, Variance = 7.2, SD = 2.68328157299975, ThirdCentralMoment = 23.04, FourthCentralMoment = 83.142912, 
        PearsonsSkewness...mean.minus.mode.div.SD = 0.669059709803087, Skewness...sqrtB1 = 1.19256958799989, Kurtosis...B2.minus.3 = -1.39616296296296))
})
