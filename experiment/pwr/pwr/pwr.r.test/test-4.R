library(testthat)

.Random.seed <<- .ext.seed

test_that("pwr.r.test", {
    expect_equal(pwr:::pwr.r.test(n = 50, r = 0.3, sig.level = 0.05, alternative = "greater"), structure(list(n = 50, r = 0.3, 
        sig.level = 0.05, power = 0.691139485379656, alternative = "greater", method = "approximate correlation power calculation (arctangh transformation)"), 
        class = "power.htest"))
})
