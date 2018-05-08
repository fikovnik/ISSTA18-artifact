library(testthat)

.Random.seed <<- .ext.seed

test_that("has_arg", {
    expect_equal(assertive.code:::has_arg(x = x, fn = mean.default), TRUE)
})
