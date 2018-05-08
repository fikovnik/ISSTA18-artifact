library(testthat)

.Random.seed <<- .ext.seed

test_that("matrixFDM", {
    vol <- c(0.2, 0.25)
    S1 <- list(c(0, 1, 2, 3, 4, 5), c(0, 1, 2, 3, 4, 5))
    rho <- structure(c(1, -0.5, -0.5, 1), .Dim = c(2L, 2L))
    rf <- 0.1
    q <- c(0.05, 0.04)
    expect_equal(multiAssetOptions:::matrixFDM(S = S1, rf = rf, q = q, vol = vol, rho = rho), .ext.1)
})
