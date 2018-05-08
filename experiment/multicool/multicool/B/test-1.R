library(testthat)

.Random.seed <<- .ext.seed

test_that("B", {
    expect_equal(multicool:::B(n = 1:6), c(1, 2, 5, 15, 52, 203))
})
