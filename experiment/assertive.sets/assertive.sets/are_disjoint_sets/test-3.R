library(testthat)

.Random.seed <<- .ext.seed

test_that("are_disjoint_sets", {
    y <- 6:10
    x <- 1:5
    expect_equal(assertive.sets:::are_disjoint_sets(x = x, y = y), TRUE)
})
