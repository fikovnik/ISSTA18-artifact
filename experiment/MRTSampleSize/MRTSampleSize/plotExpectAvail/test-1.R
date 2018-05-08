library(testthat)

.Random.seed <<- .ext.seed

test_that("plotExpectAvail", {
    expect_equal(MRTSampleSize:::plotExpectAvail(days = 42, occ_per_day = 5, tau_shape = "quadratic", tau_mean = 0.5, tau_initial = 0.7, 
        tau_quadratic_max = 42), list(rect = list(w = 16.80615625, h = 0.125581395348837, left = -0.64, top = 1.04), text = list(x = c(3.1653125, 
        3.1653125), y = c(0.998139534883721, 0.956279069767442))))
})
