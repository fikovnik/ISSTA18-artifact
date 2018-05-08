library(testthat)

.Random.seed <<- .ext.seed

test_that("ave_chisq", {
    q <- 3
    n <- 6
    m <- 10
    D <- structure(c(1, 2, 1, 2, 3, 3, 1, 3, 2, 2, 1, 3, 3, 1, 2, 1, 2, 3, 1, 1, 3, 2, 2, 3, 2, 3, 1, 2, 1, 3, 2, 1, 1, 3, 
        2, 3, 1, 2, 3, 1, 2, 3, 2, 2, 1, 1, 3, 3, 2, 1, 2, 3, 1, 3, 3, 2, 2, 1, 1, 3), .Dim = c(6L, 10L))
    expect_equal(mkssd:::ave_chisq(D = D, m = m, n = n, q = q), list(4, 6, 0))
})
