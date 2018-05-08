library(testthat)

.Random.seed <<- .ext.seed

test_that("validate_arg", {
    value1_arg <- 1
    expect_equal(ZillowR:::validate_arg(x = value1_arg, value_max = 2), NULL)
})
