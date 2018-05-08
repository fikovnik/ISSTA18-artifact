library(testthat)

.Random.seed <<- .ext.seed

test_that("merge.list", {
    expect_equal(ttutils:::merge.list(x = list(1, a = 2, b = 3), y = list(2, b = 4)), list(1, a = 2, b = 3, 2))
})
