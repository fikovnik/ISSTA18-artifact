library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGprovider", {
    expect_equal(rngtools:::RNGprovider(), "base")
})
