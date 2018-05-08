library(testthat)

.Random.seed <<- .ext.seed

test_that("assert_is_superset", {
    expect_equal(assertive.sets:::assert_is_superset(x = 1:5, y = 1:4), 1:5)
})
