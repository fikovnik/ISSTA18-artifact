library(testthat)

.Random.seed <<- .ext.seed

test_that("validate_arg", {
    numbers_01 <- 1
    expect_equal(ZillowR:::validate_arg(x = numbers_01, inclusion = 1:26), NULL)
})
