library(testthat)

.Random.seed <<- .ext.seed

test_that("shwet", {
    z <- c(2, 3, 4)
    n <- 3L
    d <- structure(c(-2L, -1L, 1L, 2L), .Dim = c(4L, 1L))
    expect_equal(FMC:::shwet(x = d, y = z[(n - 1)]), structure(c(-1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 1, -2, -1, 1, 2, 2, 
        1, -1, -2, -2, -1, 1, 2), .Dim = c(12L, 2L), .Dimnames = list(NULL, NULL)))
})
