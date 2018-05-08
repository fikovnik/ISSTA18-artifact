library(testthat)

.Random.seed <<- .ext.seed

test_that("lambertWm1", {
    expect_equal(lamW:::lambertWm1(x = 1), NaN)
})
