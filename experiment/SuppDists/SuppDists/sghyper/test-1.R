library(testthat)

.Random.seed <<- .ext.seed

test_that("sghyper", {
    expect_equal(SuppDists:::sghyper(a = -1, k = -1, N = 5), list(title = "Generalized Hypergeometric", a = -1, k = -1, N = 5, 
        Mean = 0.2, Median = 0, Mode = 0, Variance = 0.36, SD = 0.6, ThirdCentralMoment = 1.176, FourthCentralMoment = 8.9712, 
        PearsonsSkewness...mean.minus.mode.div.SD = 0.333333333333333, Skewness...sqrtB1 = 5.44444444444444, Kurtosis...B2.minus.3 = 66.2222222222222))
})
