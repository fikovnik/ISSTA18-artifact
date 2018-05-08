library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.p.test", {
    ES.h <- pwr::ES.h
    expect_equal(pwr:::pwr.p.test(h = ES.h(p1 = 0.75, p2 = 0.5), n = 40, sig.level = 0.01, alternative = "greater"), structure(list(h = 0.523598775598298, 
        n = 40, sig.level = 0.01, power = 0.837732548695645, alternative = "greater", method = "proportion power calculation for binomial distribution (arcsine transformation)"), 
        class = "power.htest"))
})
