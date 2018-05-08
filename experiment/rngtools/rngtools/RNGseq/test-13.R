library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGseq", {
    n <- 1
    expect_equal(rngtools:::RNGseq(n = n, seed = 1:6), c(507L, 1L, 2L, 3L, 4L, 5L, 6L))
})
