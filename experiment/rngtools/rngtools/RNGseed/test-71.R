library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGseed", {
    expect_equal(rngtools:::RNGseed(), 1:3)
})
