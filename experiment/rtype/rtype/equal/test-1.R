library(testthat)

.Random.seed <<- .ext.seed

test_that("equal", {
    value <- 2
    actual <- 2L
    expect_equal(rtype:::equal(x = actual, y = value), TRUE)
})
