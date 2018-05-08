library(testthat)

.Random.seed <<- .ext.seed

test_that("bigqr.init", {
    p <- 3L
    expect_equal(biglm:::bigqr.init(p = p), structure(list(D = c(0, 0, 0), rbar = c(0, 0, 0), thetab = c(0, 0, 0), ss = 0, 
        checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"))
})
