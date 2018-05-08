library(testthat)

.Random.seed <<- .ext.seed

test_that("publicA", {
    www <- .ext.1
    expect_equal(packS4:::publicA(object = www), NaN)
})
