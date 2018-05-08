library(testthat)

.Random.seed <<- .ext.seed

test_that("genmat", {
    q <- 3
    n <- 6
    m <- 10
    k <- 2
    expect_equal(mkssd:::genmat(m = m, n = n, q = q, k = k), structure(c(3, 2, 1, 1, 2, 1, 2, 3, 2, 1), .Dim = c(5L, 2L)))
})
