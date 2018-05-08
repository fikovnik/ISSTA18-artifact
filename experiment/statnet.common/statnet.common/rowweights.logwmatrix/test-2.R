library(testthat)

.Random.seed <<- .ext.seed

test_that("rowweights.logwmatrix", {
    cmlog <- structure(c(1, 3, 2, 6, 3, 9), .Dim = 2:3, w = c(1.79175946922805, 0.693147180559945), class = c("logwmatrix", 
        "wmatrix", "matrix"))
    expect_equal(statnet.common:::rowweights.logwmatrix(x = cmlog), c(6, 2))
})
