library(testthat)

.Random.seed <<- .ext.seed

test_that("gt2rsens", {
    expect_equal(gt4ireval:::gt2rsens(Phi = 0.8), 0.123886114211579)
})
