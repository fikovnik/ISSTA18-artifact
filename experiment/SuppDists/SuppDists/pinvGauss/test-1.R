library(testthat)

.Random.seed <<- .ext.seed

test_that("pinvGauss", {
    expect_equal(SuppDists:::pinvGauss(q = 1, nu = 1, lambda = 16), 0.549122546212425)
})
