library(testthat)

.Random.seed <<- .ext.seed

test_that("power.mmrm", {
    sigmaa <- 1
    Ra <- structure(c(1, 0.25, 0.25, 0.25, 0.25, 1, 0.25, 0.25, 0.25, 0.25, 1, 0.25, 0.25, 0.25, 0.25, 1), .Dim = c(4L, 4L))
    ra <- c(1, 0.9, 0.8, 0.7)
    expect_equal(longpower:::power.mmrm(N = 174, Ra = Ra, ra = ra, sigmaa = sigmaa, delta = 0.5), structure(list(n1 = 87, 
        n2 = 87, retention1 = c(1, 0.9, 0.8, 0.7), retention2 = c(1, 0.9, 0.8, 0.7), delta = 0.5, sig.level = 0.05, power = 0.800037187212964, 
        alternative = "two.sided", method = "Power for Mixed Model of Repeated Measures (Lu, Luo, & Chen, 2008)"), class = "power.htest"))
})
