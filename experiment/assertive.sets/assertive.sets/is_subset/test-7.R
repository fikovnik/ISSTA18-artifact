library(testthat)

.Random.seed <<- .ext.seed

test_that("is_subset", {
    expect_equal(assertive.sets:::is_subset(x = 1:4, y = 1:5), TRUE)
})
