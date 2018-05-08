library(testthat)

.Random.seed <<- .ext.seed

test_that("pcgen", {
    insulate <- pcensmix::insulate
    expect_equal(pcensmix:::pcgen(r = 6, p = 0.3, data = insulate), structure(list(original_data = c(0.19, 0.78, 0.96, 1.31, 
        2.78, 3.16, 4.15, 4.67, 4.85, 6.5, 7.35, 8.01, 8.27, 12.06, 31.75, 32.52, 33.91, 36.71, 72.89), censored_version_of_data = c(0.19, 
        0.19, 0.78, 0.96, 1.31, 3.16, 3.16, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15, 4.15), censoring_indicator = c(1, 
        0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)), class = "pcgen", row.names = c(NA, -19L)))
})
