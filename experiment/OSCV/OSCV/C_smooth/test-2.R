library(testthat)

.Random.seed <<- .ext.seed

test_that("C_smooth", {
    expect_equal(OSCV:::C_smooth(alpha = 1, sigma = 1), 0.616847063858553)
})
