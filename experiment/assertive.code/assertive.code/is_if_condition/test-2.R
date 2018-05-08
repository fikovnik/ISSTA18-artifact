library(testthat)

.Random.seed <<- .ext.seed

test_that("is_if_condition", {
    expect_equal(assertive.code:::is_if_condition(x = TRUE), TRUE)
})
