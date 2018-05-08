library(testthat)

.Random.seed <<- .ext.seed

test_that("is_valid_r_code", {
    expect_equal(assertive.code:::is_valid_r_code(x = "x <- 1 + sqrt(pi)"), TRUE)
})
