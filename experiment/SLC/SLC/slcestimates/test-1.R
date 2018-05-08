library(testthat)

.Random.seed <<- .ext.seed

test_that("slcestimates", {
    n_a <- 3
    info <- structure(c(3, 4, 2, 5, 6, 7), .Dim = 6L)
    expect_equal(SLC:::slcestimates(info = info, n_a = n_a), list(1.5, 3))
})
