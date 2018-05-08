library(testthat)

.Random.seed <<- .ext.seed

test_that("dilution", {
    expect_equal(ecolMod:::dilution(main = c("Stock", "Stirred tank"), int = "Flow,Q"), list(p1 = c(0.55, 0.375), p2 = c(0.15, 
        0.82)))
})
