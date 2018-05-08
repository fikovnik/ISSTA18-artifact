library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.r.test", {
    expect_equal(pwr:::pwr.r.test(r = 0.1, sig.level = 0.01, power = 0.8), structure(list(n = 1162.56417426414, r = 0.1, 
        sig.level = 0.01, power = 0.8, alternative = "two.sided", method = "approximate correlation power calculation (arctangh transformation)"), 
        class = "power.htest"))
})
