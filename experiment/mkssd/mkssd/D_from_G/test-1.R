library(testthat)

.Random.seed <<- .ext.seed

test_that("D_from_G", {
    q <- 3
    n <- 6
    m <- 10
    k <- 2
    gmat <- structure(c(3, 2, 1, 1, 2, 1, 2, 3, 2, 1), .Dim = c(5L, 2L))
    expect_equal(mkssd:::D_from_G(gmat = gmat, m = m, n = n, q = q, k = k), structure(c(3, 2, 1, 1, 2, 3, 1, 1, 2, 3, 2, 
        3, 2, 3, 2, 1, 1, 3, 2, 1, 1, 2, 3, 3, 1, 2, 3, 2, 1, 3, 3, 2, 1, 1, 2, 3, 1, 1, 2, 3, 2, 3, 2, 3, 2, 1, 1, 3, 2, 
        1, 1, 2, 3, 3, 1, 2, 3, 2, 1, 3), .Dim = c(6L, 10L)))
})
