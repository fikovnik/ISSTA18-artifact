library(testthat)

.Random.seed <<- .ext.seed

test_that("assert_is_subset", {
    expect_equal(assertive.sets:::assert_is_subset(x = 1:4, y = 1:5), 1:4)
})
