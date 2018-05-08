library(testthat)

.Random.seed <<- .ext.seed

test_that("lmmpower", {
    expect_equal(longpower:::lmmpower(n = 208, t = seq(0, 1.5, 0.25), sig2.i = 55, sig2.s = 24, sig2.e = 10, cov.s.i = 0.8 * 
        sqrt(55) * sqrt(24), power = 0.8), structure(list(n = 208, delta = 1.49751028943272, sig2.s = 24, sig2.e = 10, sig.level = 0.05, 
        t = c(0, 0.25, 0.5, 0.75, 1, 1.25, 1.5), power = 0.8, alternative = "two.sided", note = "n is number in *each* group", 
        method = "Power for longitudinal linear model with random slope (Edland, 2009)"), class = "power.longtest"))
})
