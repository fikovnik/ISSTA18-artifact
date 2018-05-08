library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.2p.test", {
    expect_equal(pwr:::pwr.2p.test(h = 0.3, n = 80, sig.level = 0.05, alternative = "greater"), structure(list(h = 0.3, n = 80, 
        sig.level = 0.05, power = 0.599677704546438, alternative = "greater", method = "Difference of proportion power calculation for binomial distribution (arcsine transformation)", 
        note = "same sample sizes"), class = "power.htest"))
})
