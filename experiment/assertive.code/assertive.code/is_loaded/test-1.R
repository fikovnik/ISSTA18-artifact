library(testthat)

.Random.seed <<- .ext.seed

test_that("is_loaded", {
    expect_equal(assertive.code:::is_loaded(x = "R_addTaskCallback", PACKAGE = "base"), TRUE)
})
