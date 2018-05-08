library(testthat)

.Random.seed <<- .ext.seed

test_that("validateProximalEffectParameters", {
    beta_shape <- "quadratic"
    beta_mean <- 0.1
    beta_initial <- 0
    expect_equal(MRTSampleSize:::validateProximalEffectParameters(beta_shape = beta_shape, beta_mean = beta_mean, beta_initial = beta_initial), 
        NULL)
})
