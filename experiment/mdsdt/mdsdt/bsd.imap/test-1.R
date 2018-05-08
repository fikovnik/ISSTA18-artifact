library(testthat)

.Random.seed <<- .ext.seed

test_that("bsd.imap", {
    pmap <- structure(c(1, 2, 1, 2, 0, 0, 0, 0, 1, 1, 2, 2, 0, 0, 0, 0, 1, 2, 3, 4), .Dim = 4:5, .Dimnames = list(NULL, c("nu", 
        "tau", "mu", "sigma", "rho")))
    dimx <- c(2L, 2L, 4L)
    expect_equal(mdsdt:::bsd.imap(pmap = pmap, dimx = dimx), list(xi = NULL, eta = NULL, mu = 1:2, sigma = NULL, nu = 3:4, 
        tau = NULL, rho = 5:8))
})
