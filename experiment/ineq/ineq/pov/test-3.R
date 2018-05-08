library(testthat)

.Random.seed <<- .ext.seed

test_that("pov", {
    x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
    expect_equal(ineq:::pov(x = x, k = 2000), 0.162014123921756)
})
