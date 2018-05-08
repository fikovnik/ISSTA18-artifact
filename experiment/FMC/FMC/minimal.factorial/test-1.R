library(testthat)

.Random.seed <<- .ext.seed

test_that("minimal.factorial", {
    z <- c(2, 3, 4)
    expect_equal(FMC:::minimal.factorial(z = z), list(run.sequence = structure(c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, -1, -1, 
        -1, -1, -2, -1, 1, 2, 2, 1, -1, -2, -2, -1, 1, 2, 2, 1, -1, -2, -2, -1, 1, 2, 2, 1, -1, -2), .Dim = c(24L, 3L), .Dimnames = list(NULL, 
        NULL)), perFactorChange = c(1, 4, 18), totalChange = 23))
})
