library(testthat)

.Random.seed <<- .ext.seed

test_that("assert_are_set_equal", {
    expect_equal(assertive.sets:::assert_are_set_equal(x = 1:5, y = 5:1), 1:5)
})
