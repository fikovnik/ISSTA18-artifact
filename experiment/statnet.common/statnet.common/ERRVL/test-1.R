library(testthat)

.Random.seed <<- .ext.seed

test_that("ERRVL", {
    expect_equal(statnet.common:::ERRVL(1, 2, 3), 1)
})
