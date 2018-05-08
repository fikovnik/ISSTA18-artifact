library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.anova.test", {
    expect_equal(pwr:::pwr.anova.test(k = 4, n = 20, f = 0.28, sig.level = 0.05), structure(list(k = 4, n = 20, f = 0.28, 
        sig.level = 0.05, power = 0.514979292196873, note = "n is number in each group", method = "Balanced one-way analysis of variance power calculation"), 
        class = "power.htest"))
})
