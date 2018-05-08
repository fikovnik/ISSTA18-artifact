library(testthat)

.Random.seed <<- .ext.seed

test_that("qNormScore", {
    U <- 0.6
    n <- 15
    c <- 3
    expect_equal(SuppDists:::qNormScore(p = 0.5, c = c, N = n, U = U), 1.51302446148511)
})
