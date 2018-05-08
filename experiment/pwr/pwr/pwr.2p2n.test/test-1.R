library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.2p2n.test", {
    expect_equal(pwr:::pwr.2p2n.test(h = 0.3, n1 = 80, n2 = 245, sig.level = 0.05, alternative = "greater"), structure(list(h = 0.3, 
        n1 = 80, n2 = 245, sig.level = 0.05, power = 0.753292447231886, alternative = "greater", method = "difference of proportion power calculation for binomial distribution (arcsine transformation)", 
        note = "different sample sizes"), class = "power.htest"))
})
