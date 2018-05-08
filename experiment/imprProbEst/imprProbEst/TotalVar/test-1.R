library(testthat)

.Random.seed <<- .ext.seed

test_that("TotalVar", {
    x <- structure(c(1, 2, 3, 4), .Dim = c(1L, 4L))
    s <- 3L
    n <- 4L
    DiscretePrevision <- list(structure(c(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), .Dim = 3:4), structure(c(1, 0, 0, 0, 0, 0, 
        0, 1, 0, 0, 0, 1), .Dim = 3:4), c(0.2105, 0.2905, 0.2405))
    expect_equal(imprProbEst:::TotalVar(x = x, DiscretePrevision = DiscretePrevision, n = n, s = s), list(0.0980000000000001, 
        0L))
})
