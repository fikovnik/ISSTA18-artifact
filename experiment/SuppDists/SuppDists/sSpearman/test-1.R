library(testthat)

.Random.seed <<- .ext.seed

test_that("sSpearman", {
    expect_equal(SuppDists:::sSpearman(r = 10), list(title = "Spearman's rho", r = 10, Mean = 0, Median = 0, Mode = 0, Variance = 0.111111111111111, 
        SD = 0.333333333333333, ThirdCentralMoment = 0, FourthCentralMoment = 0.0313086419753086, PearsonsSkewness...mean.minus.mode.div.SD = 0, 
        Skewness...sqrtB1 = 0, Kurtosis...B2.minus.3 = -0.464))
})
