library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.norm.test", {
    d <- 0.333333333333333
    expect_equal(pwr:::pwr.norm.test(d = d, n = 20, sig.level = 0.05, alternative = "greater"), structure(list(d = 0.333333333333333, 
        n = 20, sig.level = 0.05, power = 0.438749027541011, alternative = "greater", method = "Mean power calculation for normal distribution with known variance"), 
        class = "power.htest"))
})
