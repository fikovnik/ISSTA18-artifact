library(testthat)

.Random.seed <<- .ext.seed

test_that("declare", {
    y <- NULL
    x <- NULL
    expect_equal(rtype:::declare(x, y), NULL)
})
