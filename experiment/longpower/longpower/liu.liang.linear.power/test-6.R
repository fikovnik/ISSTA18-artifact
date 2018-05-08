library(testthat)

.Random.seed <<- .ext.seed

test_that("liu.liang.linear.power", {
    v <- list(v1 = c(1, 1, 1), v2 = c(1, 1, 1))
    u <- list(u1 = c(1, 1, 1), u2 = c(0, 0, 0))
    rho <- 0.2
    delta <- 0.2
    expect_equal(longpower:::liu.liang.linear.power(delta = delta, u = u, v = v, sigma2 = 1, R = rho, power = 0.8, alternative = "one.sided"), 
        structure(list(N = 288.519337494256, n = c(144.259668747128, 144.259668747128), delta = 0.2, sigma2 = 1, sig.level = 0.05, 
            power = 0.8, alternative = "one.sided", R = 0.2, note = "N is total sample size and n is sample size in each group.", 
            method = "Longitudinal linear model power calculation (Liu & Liang, 1997)"), class = "power.longtest"))
})
