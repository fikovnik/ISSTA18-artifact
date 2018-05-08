library(testthat)

.Random.seed <<- .ext.seed

test_that("sJohnson", {
    parms <- list(gamma = 0, delta = 1, xi = -0.0439224370658353, lambda = 0.937292926941169, type = "SN")
    expect_equal(SuppDists:::sJohnson(parms = parms), list(title = "Johnson Distribution", gamma = 0, delta = 1, xi = -0.0439224370658353, 
        lambda = 0.937292926941169, type = structure(1, names = "SN"), Mean = -0.0439224370658353, Median = -0.0439224370658353, 
        Mode = -0.0439224370658353, Variance = 0.878518030893944, SD = 0.937292926941169, ThirdCentralMoment = 0, FourthCentralMoment = 2.31538179181732, 
        PearsonsSkewness...mean.minus.mode.div.SD = 0, Skewness...sqrtB1 = 0, Kurtosis...B2.minus.3 = 0))
})
