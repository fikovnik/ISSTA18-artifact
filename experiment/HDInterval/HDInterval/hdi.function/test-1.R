library(testthat)

.Random.seed <<- .ext.seed

test_that("hdi.function", {
    qgamma <- stats::qgamma
    expect_equal(HDInterval:::hdi.function(object = qgamma, credMass = 0.8, shape = 2.5, rate = 2), structure(c(0.194715791900048, 
        1.90539250800608), names = c("lower", "upper"), credMass = 0.8))
})
