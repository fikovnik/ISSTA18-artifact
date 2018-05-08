library(testthat)

.Random.seed <<- .ext.seed

test_that("order.matrix", {
    x <- structure(c(1, 1, 3, 2, 2, 6, 3, 3, 9), .Dim = c(3L, 3L), w = c(1.38629436111989, 0.693147180559945, 0.693147180559945), 
        class = c("logwmatrix", "wmatrix", "matrix"))
    expect_equal(statnet.common:::order.matrix(x), 1:3)
})
