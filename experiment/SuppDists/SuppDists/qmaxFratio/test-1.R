library(testthat)

.Random.seed <<- .ext.seed

test_that("qmaxFratio", {
    expect_equal(SuppDists:::qmaxFratio(p = 0.95, df = c(10, 20), k = 10), c(8.64415316513189, 4.3451250116322))
})
