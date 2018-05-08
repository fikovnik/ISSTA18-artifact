library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.t2n.test", {
    expect_equal(pwr:::pwr.t2n.test(n1 = 28, n2 = 35, d = 0.5), structure(list(n1 = 28, n2 = 35, d = 0.5, sig.level = 0.05, 
        power = 0.492458788318539, alternative = "two.sided", method = "t test power calculation"), class = "power.htest"))
})
