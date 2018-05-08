library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.p.test", {
    expect_equal(pwr:::pwr.p.test(h = 0.2, n = 60, sig.level = 0.05, alternative = "two.sided"), structure(list(h = 0.2, 
        n = 60, sig.level = 0.05, power = 0.340845124067498, alternative = "two.sided", method = "proportion power calculation for binomial distribution (arcsine transformation)"), 
        class = "power.htest"))
})
