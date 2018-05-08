library(testthat)

.Random.seed <<- .ext.seed

test_that("publicB", {
    www <- .ext.1
    vvv <- .ext.2
    expect_equal(packS4:::publicB(objectV = vvv, objectW = www), 2)
})
