library(testthat)

.Random.seed <<- .ext.seed

test_that("sPearson", {
    expect_equal(SuppDists:::sPearson(N = 10), list(title = "Correlation coefficient", rho = 0, N = 10, Mean = 0, Median = -2.51935729160742e-05, 
        Mode = -0.00787401574803281, Variance = 0.101806640625, SD = 0.319071529010346, ThirdCentralMoment = -0, FourthCentralMoment = 0.0254974365234375, 
        PearsonsSkewness...mean.minus.mode.div.SD = 0.0246779014487924, Skewness...sqrtB1 = 0, Kurtosis...B2.minus.3 = -0.53994789779687))
})
