library(testthat)

.Random.seed <<- .ext.seed

test_that("lmmpower", {
    tol <- 4.93038065763132e-32
    t <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
    sig2.s <- 0
    sig2.i <- 1378.1785084185
    sig2.e <- 960.456578928759
    sig.level <- 0.05
    power <- 0.8
    pct.change <- 0.3
    parameter <- "Days"
    n <- NULL
    method <- "edland"
    delta.CI <- NULL
    delta <- NULL
    cov.s.i <- 0
    beta.CI <- c(8.89104092296574, 12.0435309962262)
    beta <- 10.467285959596
    alternative <- "two.sided"
    expect_equal(longpower:::lmmpower(object = NULL, n = n, parameter = parameter, pct.change = pct.change, delta = delta, 
        t = t, sig.level = sig.level, power = power, alternative = alternative, beta = beta, beta.CI = beta.CI, delta.CI = delta.CI, 
        sig2.i = sig2.i, sig2.s = sig2.s, sig2.e = sig2.e, cov.s.i = cov.s.i, method = method, tol = tol), structure(list(n = 18.5332152601122, 
        delta = 3.14018578787879, sig2.s = 0, sig2.e = 960.456578928759, sig.level = 0.05, t = c(0, 1, 2, 3, 4, 5, 6, 7, 
            8, 9), power = 0.8, alternative = "two.sided", note = "n is number in *each* group", method = "Power for longitudinal linear model with random slope (Edland, 2009)", 
        delta.CI = c(2.66731227688972, 3.61305929886785), Days = 10.467285959596, `Days CI` = c(8.89104092296574, 12.0435309962262), 
        n.CI = c(13.9994598249345, 25.6870203401626)), class = "power.longtest"))
})
