library(testthat)

.Random.seed <<- .ext.seed

test_that("rowweights.logwmatrix", {
    m3 <- structure(c(1, 2, 3, 2, 4, 6, 3, 6, 9), .Dim = c(3L, 3L), w = c(4, 2, 2), class = c("linwmatrix", "wmatrix", "matrix"))
    as.logwmatrix <- statnet.common::as.logwmatrix
    expect_equal(statnet.common:::rowweights.logwmatrix(x = as.logwmatrix(m3)), c(4, 2, 2))
})
