library(testthat)

.Random.seed <<- .ext.seed

test_that("merge.list", {
    expect_equal(ttutils:::merge.list(x = list(1)), list(1))
})
