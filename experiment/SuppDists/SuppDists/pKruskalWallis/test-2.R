library(testthat)

.Random.seed <<- .ext.seed

test_that("pKruskalWallis", {
    expect_equal(SuppDists:::pKruskalWallis(q = 1, c = 3, N = 15, U = 0.6), 0.374437554555644)
})
