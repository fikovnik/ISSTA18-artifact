library(testthat)

.Random.seed <<- .ext.seed

test_that("BuildBounds2", {
    x.frequency <- c(1L, 1L, 1L, 1L)
    nr <- 4L
    n <- 4L
    m <- 1
    expect_equal(imprProbEst:::BuildBounds2(n = n, nr = nr, x.frequency = x.frequency, m = m), structure(c(0.25, 0.25, 0.25, 
        0.25, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0), .Dim = c(15L, 1L), .Dimnames = list(c("", "", "", "", "b2", "b3", "", "", 
        "", "", "", "", "", "", ""), NULL)))
})
