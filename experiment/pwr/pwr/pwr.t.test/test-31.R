library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.t.test", {
    expect_equal(pwr:::pwr.t.test(n = 30, d = 0.5, sig.level = 0.05), structure(list(n = 30, d = 0.5, sig.level = 0.05, power = 0.477896520760209, 
        alternative = "two.sided", note = "n is number in *each* group", method = "Two-sample t test power calculation"), 
        class = "power.htest"))
})
