library(testthat)

.Random.seed <<- .ext.seed

test_that("as.linwmatrix.logwmatrix", {
    cmlog <- structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9), .Dim = c(3L, 3L), w = c(1.38629436111989, 0.693147180559945, 0.693147180559945), 
        class = c("logwmatrix", "wmatrix", "matrix"))
    expect_equal(statnet.common:::as.linwmatrix.logwmatrix(x = cmlog), structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9), .Dim = c(3L, 
        3L), w = c(4, 2, 2), class = c("linwmatrix", "wmatrix", "matrix")))
})
