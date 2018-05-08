library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGtype", {
    expect_equal(rngtools:::RNGtype(), c("Mersenne-Twister", "Inversion"))
})
