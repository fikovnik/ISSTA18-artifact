library(testthat)

.Random.seed <<- .ext.seed

test_that("dWNCHypergeo", {
    expect_equal(BiasedUrn:::dWNCHypergeo(x = 12, m1 = 25, m2 = 32, n = 20, odds = 2.5), 0.218338747480106)
})
