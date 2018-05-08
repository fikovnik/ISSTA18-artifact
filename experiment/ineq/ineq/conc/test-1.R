library(testthat)

.Random.seed <<- .ext.seed

test_that("conc", {
    x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
    expect_equal(ineq:::conc(x = x, type = "Rosenbluth"), 0.185905095875725)
})
