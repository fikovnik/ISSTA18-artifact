library(testthat)

.Random.seed <<- .ext.seed

test_that("rpoibin", {
    pp <- c(0.1, 0.2, 0.3, 0.4, 0.5)
    expect_equal(poibin:::rpoibin(m = 2, pp = pp, wts = rep(2, 5)), c(5, 5))
})
