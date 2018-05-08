library(testthat)

.Random.seed <<- .ext.seed

test_that("JohnsonFit", {
    expect_equal(SuppDists:::JohnsonFit(t = c(0, 1, -0.5, 4), moment = "use"), list(gamma = 1.19140016872162, delta = 2.7390604239036, 
        xi = 0.556845987364109, lambda = 2.32143440775128, type = "SU"))
})
