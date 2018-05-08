library(testthat)

.Random.seed <<- .ext.seed

test_that("tryRequire", {
    expect_equal(SoDA:::tryRequire(what = RSPerl), FALSE)
})
