library(testthat)

.Random.seed <<- .ext.seed

test_that("power.mmrm.ar1", {
    r <- c(1, 0.8)
    p1J <- 0
    J <- 2
    expect_equal(longpower:::power.mmrm.ar1(rho = p1J^(1/(J - 1)), ra = r, sigmaa = 1, lambda = 1, times = 1:J, delta = 1, 
        sig.level = 0.05, power = 0.8), structure(list(n1 = 19.6221993358727, n2 = 19.6221993358727, rho = 0, retention1 = c(1, 
        0.8), retention2 = c(1, 0.8), phi1 = 1.25, phi2 = 1.25, delta = 1, times = 1:2, sig.level = 0.05, power = 0.8, alternative = "two.sided", 
        method = "Power for Mixed Model of Repeated Measures (Lu, Luo, & Chen, 2008)"), class = "power.htest"))
})
