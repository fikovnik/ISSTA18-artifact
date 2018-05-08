library(testthat)

.Random.seed <<- .ext.seed

test_that("checkRNG", {
    expect_equal(rngtools:::checkRNG(x = 123), TRUE)
})
