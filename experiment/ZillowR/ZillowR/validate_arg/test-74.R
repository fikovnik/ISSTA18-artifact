library(testthat)

.Random.seed <<- .ext.seed

test_that("validate_arg", {
    absent_arg <- NULL
    expect_equal(ZillowR:::validate_arg(x = absent_arg, format = "^f"), NULL)
})
