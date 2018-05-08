library(testthat)

.Random.seed <<- .ext.seed

test_that("publicA", {
    vvv <- .ext.1
    expect_equal(packS4:::publicA(object = vvv), NaN)
})
