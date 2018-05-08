library(testthat)

.Random.seed <<- .ext.seed

test_that("log_sum_exp", {
    X <- list(c(0, 0, 0, 0), c(0, 0), c(0, 0))
    i <- 1L
    expect_equal(statnet.common:::log_sum_exp(logx = X[[i]]), 1.38629436111989)
})
