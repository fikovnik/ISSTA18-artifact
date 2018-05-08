library(testthat)

.Random.seed <<- .ext.seed

test_that("calculateSampleSize", {
    expect_equal(MRTSampleSize:::calculateSampleSize(days = 42, occ_per_day = 5, prob = 0.4, beta_shape = "quadratic", beta_mean = 0.1, 
        beta_initial = 0, beta_quadratic_max = 28, tau_shape = "quadratic", tau_mean = 0.5, tau_initial = 0.7, tau_quadratic_max = 42, 
        power = 0.8, sigLev = 0.05), 46L)
})
