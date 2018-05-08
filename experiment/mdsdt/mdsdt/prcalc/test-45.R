library(testthat)

.Random.seed <<- .ext.seed

test_that("prcalc", {
    rho <- -0.195845069416469
    kappa <- 0.391664617794278
    alpha <- 1.09247179701
    expect_equal(mdsdt:::prcalc(mean = c(alpha, kappa), cov = matrix(data = c(1, rho, rho, 1), nrow = 2, ncol = 2)), structure(c(0.0325372257372343, 
        0.104775664400998, 0.315115792462717, 0.54757131739905), .Dim = c(1L, 4L)))
})
