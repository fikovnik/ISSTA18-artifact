library(testthat)

.Random.seed <<- .ext.seed

test_that("SumNotNA", {
    newX <- structure(c(0, NA, NA, 11.5, 0, NA, 1.7, 11.5, 0, 13.9, 0, NA, 19.7, 0, NA, 9.3, 19.7, 0, 30.5, 0, NA, 32.3, 
        0, NA), .Dim = c(3L, 8L), .Dimnames = list(c("river", "parent", ""), NULL))
    i <- 1L
    expect_equal(rivervis:::SumNotNA(x = newX[, i]), 0)
})
