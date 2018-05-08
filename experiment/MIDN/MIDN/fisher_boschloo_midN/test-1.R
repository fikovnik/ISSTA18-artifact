library(testthat)

.Random.seed <<- .ext.seed

test_that("fisher_boschloo_midN", {
    expect_equal(MIDN:::fisher_boschloo_midN(alpha = 0.025, SW = 1e-04, p1 = 0.95, p2 = 0.8, POWO = 0.8, mton_a = 2, mton_b = 1), 
        c(104, 52, 106, 53, 0.804477941611168, 122, 61, 0.802466446595161, 114, 57))
})
