library(testthat)

.Random.seed <<- .ext.seed

test_that("pghyper", {
    expect_equal(SuppDists:::pghyper(q = 3, a = 4, k = 4, N = 8, lower.tail = FALSE), 0.0142857142857394)
})
