library(testthat)

.Random.seed <<- .ext.seed

test_that("merge.list", {
    expect_equal(ttutils:::merge.list(x = list(1), y = list(2, b = 3), mergeUnnamed = FALSE), list(1, b = 3))
})
