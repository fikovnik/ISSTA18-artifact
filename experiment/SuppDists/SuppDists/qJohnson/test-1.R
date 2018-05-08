library(testthat)

.Random.seed <<- .ext.seed

test_that("qJohnson", {
    parms2 <- list(gamma = 0.808448794379973, delta = 0.534625601290544, xi = -0.0405044272240995, lambda = 3.67116463855326, 
        type = "SB")
    parms <- list(gamma = 0, delta = 1, xi = -0.0439224370658353, lambda = 0.937292926941169, type = "SN")
    expect_equal(SuppDists:::qJohnson(p = 0.5, parms = list(parms, parms2)), c(-0.0439224370658353, 0.622567801315309))
})
