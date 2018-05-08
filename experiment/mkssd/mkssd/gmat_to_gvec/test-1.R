library(testthat)

.Random.seed <<- .ext.seed

test_that("gmat_to_gvec", {
    n <- 6
    k <- 2
    gmat <- structure(c(3, 2, 1, 1, 2, 1, 2, 3, 2, 1), .Dim = c(5L, 2L))
    expect_equal(mkssd:::gmat_to_gvec(gmat = gmat, n = n, k = k), structure(c(3, 1, 2, 2, 1, 3, 1, 2, 2, 1), .Dim = c(1L, 
        10L)))
})
