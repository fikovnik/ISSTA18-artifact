library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.2p.test", {
    expect_equal(pwr:::pwr.2p.test(h = 0.2, sig.level = 0.05, power = 0.8), structure(list(h = 0.2, n = 392.443026235748, 
        sig.level = 0.05, power = 0.8, alternative = "two.sided", method = "Difference of proportion power calculation for binomial distribution (arcsine transformation)", 
        note = "same sample sizes"), class = "power.htest"))
})
