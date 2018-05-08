library(testthat)

.Random.seed <<- .ext.seed

test_that("smaxFratio", {
    expect_equal(SuppDists:::smaxFratio(df = 10, k = 10), list(title = "Maximum F ratio", df = 10, k = 10, Mean = 4.44, Median = 4.08, 
        Mode = 3.33, Variance = 3.35, SD = 1.83, ThirdCentralMoment = 9.59, FourthCentralMoment = 63.82, PearsonsSkewness...mean.minus.mode.div.SD = 0.61, 
        Skewness...sqrtB1 = 1.56, Kurtosis...B2.minus.3 = 2.68))
})
