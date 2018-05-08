library(testthat)

.Random.seed <<- .ext.seed

test_that("ppoibin", {
    pp <- c(0.1, 0.2, 0.3, 0.4, 0.5)
    kk <- 0:10
    expect_equal(poibin:::ppoibin(kk = kk, pp = pp, method = "DFT-CF", wts = rep(2, 5)), c(0.02286144, 0.1351728, 0.37211652, 
        0.653835, 0.86212984, 0.96181016, 0.992945, 0.99918348, 0.9999472, 0.99999856, 1))
})
