library(testthat)

.Random.seed <<- .ext.seed

test_that("S2", {
    expect_equal(multicool:::S2(n = 6:4, k = 1:3), c(1, 15, 6))
})
