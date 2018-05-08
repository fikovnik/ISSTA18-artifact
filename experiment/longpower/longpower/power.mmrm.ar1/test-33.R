library(testthat)

.Random.seed <<- .ext.seed

test_that("power.mmrm.ar1", {
    rb <- c(1, 0.87, 0.81, 0.78)
    ra <- c(1, 0.76, 0.63, 0.52)
    expect_equal(longpower:::power.mmrm.ar1(N = 80, rho = 0.6, ra = ra, sigmaa = 1, rb = rb, lambda = 1, delta = 0.9), structure(list(n1 = 40, 
        n2 = 40, rho = 0.6, retention1 = c(1, 0.76, 0.63, 0.52), retention2 = c(1, 0.87, 0.81, 0.78), phi1 = 1.75227635858878, 
        phi2 = 1.24695119599175, delta = 0.9, times = 1:4, sig.level = 0.05, power = 0.907711669457866, alternative = "two.sided", 
        method = "Power for Mixed Model of Repeated Measures (Lu, Luo, & Chen, 2008)"), class = "power.htest"))
})
