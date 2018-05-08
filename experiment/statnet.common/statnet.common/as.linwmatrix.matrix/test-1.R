library(testthat)

.Random.seed <<- .ext.seed

test_that("as.linwmatrix.matrix", {
    m <- structure(c(1, 1, 3, 3, 2, 2, 1, 1, 2, 2, 6, 6, 4, 4, 2, 2, 3, 3, 9, 9, 6, 6, 3, 3), .Dim = c(8L, 3L))
    expect_equal(statnet.common:::as.linwmatrix.matrix(x = m), structure(c(1, 1, 3, 3, 2, 2, 1, 1, 2, 2, 6, 6, 4, 4, 2, 2, 
        3, 3, 9, 9, 6, 6, 3, 3), .Dim = c(8L, 3L), w = c(1, 1, 1, 1, 1, 1, 1, 1), class = c("linwmatrix", "wmatrix", "matrix")))
})
