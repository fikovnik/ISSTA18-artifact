library(testthat)

.Random.seed <<- .ext.seed

test_that("Gini", {
    y <- c(2, 2, 2, 2, 2, 18, 18, 18, 18, 18)
    expect_equal(ineq:::Gini(x = y, corr = TRUE), 0.444444444444444)
})
