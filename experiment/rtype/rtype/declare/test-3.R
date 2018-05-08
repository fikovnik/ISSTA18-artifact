library(testthat)

.Random.seed <<- .ext.seed

test_that("declare", {
    expect_equal(rtype:::declare(x = numeric()), NULL)
})
