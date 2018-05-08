library(testthat)

.Random.seed <<- .ext.seed

test_that("pghyper", {
    expect_equal(SuppDists:::pghyper(q = 1, a = 4, k = 4, N = 8), 0.24285714285757)
})
