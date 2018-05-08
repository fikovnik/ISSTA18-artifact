library(testthat)

.Random.seed <<- .ext.seed

test_that("pJohnson", {
    parms <- list(gamma = 0, delta = 1, xi = -0.0439224370658353, lambda = 0.937292926941169, type = "SN")
    expect_equal(SuppDists:::pJohnson(q = 1, parms = parms), 0.867309621349492)
})
