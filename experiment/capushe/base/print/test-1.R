library(testthat)

.Random.seed <<- .ext.seed

test_that("print", {
    object <- .ext.1
    expect_equal(base:::print(x = object@model), "K=21")
})
