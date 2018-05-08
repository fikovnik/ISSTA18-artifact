library(testthat)

.Random.seed <<- .ext.seed

test_that("index_g", {
    X <- list(9, c(9, 0), c(9, 0, 0), c(9, 0, 0, 0))
    i <- 3L
    expect_equal(agop:::index_g(x = X[[i]]), 3)
})
