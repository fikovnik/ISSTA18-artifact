library(testthat)

.Random.seed <<- .ext.seed

test_that("Ginv", {
    x <- structure(c(1, 2, 1, 2, 3, 2), .Dim = 2:3)
    expect_equal(ibdreg:::Ginv(x = x), list(Ginv = structure(c(-0.25, -0.25, 0.5, 0.375, 0.375, -0.25), .Dim = c(3L, 2L)), 
        rank = 2L))
})
