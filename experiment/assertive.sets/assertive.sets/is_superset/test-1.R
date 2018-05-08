library(testthat)

.Random.seed <<- .ext.seed

test_that("is_superset", {
    expect_equal(assertive.sets:::is_superset(x = 1:5, y = 1:4), TRUE)
})
