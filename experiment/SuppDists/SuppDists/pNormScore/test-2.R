library(testthat)

.Random.seed <<- .ext.seed

test_that("pNormScore", {
    expect_equal(SuppDists:::pNormScore(q = 2, c = 3, N = 15, U = 0.6), 0.60503149195006)
})
