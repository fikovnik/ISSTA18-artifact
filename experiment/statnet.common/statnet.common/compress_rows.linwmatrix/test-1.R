library(testthat)

.Random.seed <<- .ext.seed

test_that("compress_rows.linwmatrix", {
    mlin <- structure(c(1, 1, 3, 3, 2, 2, 1, 1, 2, 2, 6, 6, 4, 4, 2, 2, 3, 3, 9, 9, 6, 6, 3, 3), .Dim = c(8L, 3L), w = c(1, 
        1, 1, 1, 1, 1, 1, 1), class = c("linwmatrix", "wmatrix", "matrix"))
    expect_equal(statnet.common:::compress_rows.linwmatrix(x = mlin), structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9), .Dim = c(3L, 
        3L), w = c(4, 2, 2), class = c("linwmatrix", "wmatrix", "matrix")))
})
