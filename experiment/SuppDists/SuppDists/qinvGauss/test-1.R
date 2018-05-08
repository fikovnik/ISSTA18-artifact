library(testthat)

.Random.seed <<- .ext.seed

test_that("qinvGauss", {
    nu <- 1
    lambda <- 16
    expect_equal(SuppDists:::qinvGauss(p = 0.5, nu = nu, lambda = lambda), 0.96983955436077)
})
