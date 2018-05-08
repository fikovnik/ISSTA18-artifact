library(testthat)

.Random.seed <<- .ext.seed

test_that("Pen", {
    x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
    n <- c(482, 825, 722, 690, 661, 760, 745, 2140, 1911, 1024)
    expect_equal(ineq:::Pen(x = x, n = n), NULL)
})
