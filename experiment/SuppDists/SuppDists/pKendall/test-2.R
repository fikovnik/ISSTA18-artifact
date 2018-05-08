library(testthat)

.Random.seed <<- .ext.seed

test_that("pKendall", {
    expect_equal(SuppDists:::pKendall(q = 0, N = 10), 0.569099702380948)
})
