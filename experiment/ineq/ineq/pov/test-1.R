library(testthat)

.Random.seed <<- .ext.seed

test_that("pov", {
    y <- c(841, 2063, 2445, 3438, 4437, 5401, 6392, 8304, 11304, 21961)
    expect_equal(ineq:::pov(x = y, k = 2000, parameter = 1, type = "Foster"), 0.1)
})
