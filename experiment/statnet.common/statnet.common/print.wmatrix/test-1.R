library(testthat)

.Random.seed <<- .ext.seed

test_that("print.wmatrix", {
    x <- structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9), .Dim = c(3L, 3L), w = c(4, 2, 2), class = c("linwmatrix", "wmatrix", "matrix"))
    expect_equal(statnet.common:::print.wmatrix(x = x), structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9, 4, 2, 2), .Dim = 3:4, .Dimnames = list(NULL, 
        c("", "", "", "Weight"))))
})
