library(testthat)

.Random.seed <<- .ext.seed

test_that("sNormScore", {
    expect_equal(SuppDists:::sNormScore(c = 3, N = 15, U = 0.6), list(title = "Normal Scores", c = 3, N = 15, U = 0.6, Mean = 2, 
        Median = 1.51302446148511, Mode = 0.0206651722413846, Variance = 3.08272012176133, SD = 1.75576767305966, ThirdCentralMoment = 4.13572808226075, 
        FourthCentralMoment = 24.6068985708284, PearsonsSkewness...mean.minus.mode.div.SD = 1.12733299406826, Skewness...sqrtB1 = 0.764101110823988, 
        Kurtosis...B2.minus.3 = -0.410662358747389))
})
