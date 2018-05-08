library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.chisq.test", {
    expect_equal(pwr:::pwr.chisq.test(w = 0.1, df = 1, sig.level = 0.01, power = 0.9), structure(list(w = 0.1, N = 1487.9387443463, 
        df = 1, sig.level = 0.01, power = 0.9, method = "Chi squared power calculation", note = "N is the number of observations"), 
        class = "power.htest"))
})
