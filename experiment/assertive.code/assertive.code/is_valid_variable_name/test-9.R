library(testthat)

.Random.seed <<- .ext.seed

test_that("is_valid_variable_name", {
    expect_equal(assertive.code:::is_valid_variable_name(x = "."), structure(TRUE, names = "."))
})
