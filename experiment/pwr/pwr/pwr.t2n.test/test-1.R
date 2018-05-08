library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.t2n.test", {
    expect_equal(pwr:::pwr.t2n.test(n1 = 90, n2 = 60, d = 0.6, alternative = "greater"), structure(list(n1 = 90, n2 = 60, 
        d = 0.6, sig.level = 0.05, power = 0.973726154629217, alternative = "greater", method = "t test power calculation"), 
        class = "power.htest"))
})
