library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.2p2n.test", {
    expect_equal(pwr:::pwr.2p2n.test(h = 0.2, n1 = 543, n2 = 675, sig.level = 0.05), structure(list(h = 0.2, n1 = 543, n2 = 675, 
        sig.level = 0.05, power = 0.934410185090008, alternative = "two.sided", method = "difference of proportion power calculation for binomial distribution (arcsine transformation)", 
        note = "different sample sizes"), class = "power.htest"))
})
