library(testthat)

.Random.seed <<- .ext.seed

test_that("Lasym", {
    y <- c(2, 2, 2, 2, 2, 18, 18, 18, 18, 18)
    expect_equal(ineq:::Lasym(x = y), 0.74)
})
