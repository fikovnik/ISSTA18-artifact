library(testthat)

.Random.seed <<- .ext.seed

test_that("print.power.longtest", {
    x <- structure(list(n = 207.310093300903, delta = 1.5, sig2.s = 24, sig2.e = 10, sig.level = 0.05, t = c(0, 0.25, 0.5, 
        0.75, 1, 1.25, 1.5), power = 0.8, alternative = "two.sided", note = "n is number in *each* group", method = "Power for longitudinal linear model with random slope (Edland, 2009)"), 
        class = "power.longtest")
    expect_equal(longpower:::print.power.longtest(x = x), structure(list(n = 207.310093300903, delta = 1.5, sig2.s = 24, 
        sig2.e = 10, sig.level = 0.05, t = c(0, 0.25, 0.5, 0.75, 1, 1.25, 1.5), power = 0.8, alternative = "two.sided"), 
        class = "power.longtest"))
})
