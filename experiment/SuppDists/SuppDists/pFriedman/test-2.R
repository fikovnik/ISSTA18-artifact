library(testthat)

.Random.seed <<- .ext.seed

test_that("pFriedman", {
    expect_equal(SuppDists:::pFriedman(q = 2, r = 5, N = 10), 0.246634418239542)
})
