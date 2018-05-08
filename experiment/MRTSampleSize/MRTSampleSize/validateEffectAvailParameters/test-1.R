library(testthat)

.Random.seed <<- .ext.seed

test_that("validateEffectAvailParameters", {
    tau_shape <- "quadratic"
    tau_mean <- 0.5
    expect_equal(MRTSampleSize:::validateEffectAvailParameters(tau_shape = tau_shape, tau_mean = tau_mean), NULL)
})
