library(testthat)

.Random.seed <<- .ext.seed

test_that("BuildOptVec", {
    nr <- 4L
    m <- 1
    expect_equal(imprProbEst:::BuildOptVec(n = nr, m = m), structure(c(1, 1, 1, 1, 0, -1, -1, -1, -1), .Dim = c(9L, 1L)))
})
