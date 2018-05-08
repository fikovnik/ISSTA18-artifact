library(testthat)

.Random.seed <<- .ext.seed

test_that("all_identical", {
    expect_equal(statnet.common:::all_identical(x = 1:3), FALSE)
})
