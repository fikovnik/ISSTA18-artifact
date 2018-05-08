library(testthat)

.Random.seed <<- .ext.seed

test_that("is.zero.blockmatrix", {
    e2 <- 1
    expect_equal(blockmatrix:::is.zero.blockmatrix(M = e2), FALSE)
})
