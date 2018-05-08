library(testthat)

.Random.seed <<- .ext.seed

test_that("sinvGauss", {
    expect_equal(SuppDists:::sinvGauss(nu = 1, lambda = 16), list(title = "Inverse Gaussian", nu = 1, lambda = 16, Mean = 1, 
        Median = 0.96983955436077, Mode = 0.910634917499262, Variance = 0.0625, SD = 0.25, ThirdCentralMoment = 0.01171875, 
        FourthCentralMoment = 0.015380859375, PearsonsSkewness...mean.minus.mode.div.SD = 0.357460330002951, Skewness...sqrtB1 = 0.75, 
        Kurtosis...B2.minus.3 = 0.9375))
})
