library(testthat)

.Random.seed <<- .ext.seed

test_that("plotProximalEffect", {
    expect_equal(MRTSampleSize:::plotProximalEffect(days = 42, occ_per_day = 5, beta_shape = "quadratic", beta_mean = 0.1, 
        beta_initial = 0, beta_quadratic_max = 28), list(rect = list(w = 16.23471875, h = 0.0334883720930232, left = -0.64, 
        top = 0.208), text = list(x = c(3.1653125, 3.1653125, 3.1653125), y = c(0.199627906976744, 0.191255813953488, 0.182883720930233))))
})
