library(testthat)

.Random.seed <<- .ext.seed

test_that("merge.list", {
    expect_equal(ttutils:::merge.list(x = list(1), y = "test", mergeUnnamed = FALSE), list(1))
})
