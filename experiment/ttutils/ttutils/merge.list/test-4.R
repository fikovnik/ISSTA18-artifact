library(testthat)

.Random.seed <<- .ext.seed

test_that("merge.list", {
    expect_equal(ttutils:::merge.list(x = list(1), y = "test"), list(1, "test"))
})
