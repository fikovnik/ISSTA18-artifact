library(testthat)

.Random.seed <<- .ext.seed

test_that("insert", {
    M <- 15L
    base <- 1L
    expect_equal(UWHAM:::insert(x = rep(0, M - 1), d = base, x0 = 1), c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
})
