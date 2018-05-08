library(testthat)

.Random.seed <<- .ext.seed

test_that("dMWNCHypergeo", {
    expect_equal(BiasedUrn:::dMWNCHypergeo(x = c(8, 10, 6), m = c(20, 30, 20), n = 24, odds = c(1, 2.5, 1.8)), 0.00359093889323919)
})
