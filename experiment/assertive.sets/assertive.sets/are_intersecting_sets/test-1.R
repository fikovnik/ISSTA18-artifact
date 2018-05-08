library(testthat)

.Random.seed <<- .ext.seed

test_that("are_intersecting_sets", {
    expect_equal(assertive.sets:::are_intersecting_sets(x = 1:4, y = 3:6), TRUE)
})
