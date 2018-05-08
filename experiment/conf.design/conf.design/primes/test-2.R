library(testthat)

.Random.seed <<- .ext.seed

test_that("primes", {
    p <- 2
    expect_equal(conf.design:::primes(n = p), 2)
})
