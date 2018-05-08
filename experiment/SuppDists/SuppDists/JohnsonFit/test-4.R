library(testthat)

.Random.seed <<- .ext.seed

test_that("JohnsonFit", {
    rexp <- stats::rexp
    expect_equal(SuppDists:::JohnsonFit(t = rexp(50)), list(gamma = 0.808448794379973, delta = 0.534625601290544, xi = -0.0405044272240995, 
        lambda = 3.67116463855326, type = "SB"))
})
