library(testthat)

.Random.seed <<- .ext.seed

test_that("diggle.linear.power", {
    t <- c(0, 2, 5)
    sigma2 <- 300
    rho <- 0.5
    expect_equal(longpower:::diggle.linear.power(delta = 0.5, t = t, sigma2 = sigma2, R = rho, power = 0.8, alternative = "one.sided"), 
        structure(list(n = 585.71594829661, delta = 0.5, sigma2 = 300, R = structure(c(1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 
            1), .Dim = c(3L, 3L)), sig.level = 0.05, power = 0.8, alternative = "one.sided", note = "n is number in *each* group", 
            method = "Longitudinal linear model slope power calculation (Diggle et al 2002, page 29)"), class = "power.longtest"))
})
