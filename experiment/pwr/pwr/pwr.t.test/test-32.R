library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.t.test", {
    expect_equal(pwr:::pwr.t.test(n = 24, d = 0.08/0.25, type = "paired", alternative = "greater"), structure(list(n = 24, 
        d = 0.32, sig.level = 0.05, power = 0.450869065267482, alternative = "greater", note = "n is number of *pairs*", 
        method = "Paired t test power calculation"), class = "power.htest"))
})
