library(testthat)

.Random.seed <<- .ext.seed

test_that("validate_arg", {
    letters_01 <- "a"
    expect_equal(ZillowR:::validate_arg(x = letters_01, exclusion = 1:26), NULL)
})
