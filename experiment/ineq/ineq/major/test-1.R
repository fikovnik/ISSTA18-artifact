library(testthat)

.Random.seed <<- .ext.seed

test_that("major", {
    y <- c(841, 2063, 2445, 3438, 4437, 5401, 6392, 8304, 11304, 21961)
    x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
    expect_equal(ineq:::major(x = x, y = y), TRUE)
})
