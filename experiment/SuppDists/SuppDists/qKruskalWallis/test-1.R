library(testthat)

.Random.seed <<- .ext.seed

test_that("qKruskalWallis", {
    U <- 0.6
    Ns <- FALSE
    n <- 15
    c <- 3
    expect_equal(SuppDists:::qKruskalWallis(p = 0.5, c = c, N = n, U = U, lower.tail = Ns), 1.48550471487385)
})
