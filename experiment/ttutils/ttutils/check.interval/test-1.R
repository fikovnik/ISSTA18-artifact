library(testthat)

.Random.seed <<- .ext.seed

test_that("check.interval", {
    int <- structure(list(lower = -3, upper = 3, left = ">", right = "<="), class = "interval")
    expect_equal(ttutils:::check.interval(object = int), TRUE)
})
