library(testthat)

.Random.seed <<- .ext.seed

test_that("print", {
    y <- .ext.1
    x <- .ext.2
    expect_equal(base:::print(x = x == y), c(FALSE, TRUE))
})
