library(testthat)

.Random.seed <<- .ext.seed

test_that("sKendall", {
    expect_equal(SuppDists:::sKendall(N = 10), list(title = "Kendall's Tau", N = 10, Mean = 0, Median = 0, Mode = 0, Variance = 0.0617283950617284, 
        SD = 0.248451997499977, ThirdCentralMoment = 0, FourthCentralMoment = 0.0073193041273523, PearsonsSkewness...mean.minus.mode.div.SD = 0, 
        Skewness...sqrtB1 = 0, Kurtosis...B2.minus.3 = -1.07912182481766))
})
