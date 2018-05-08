library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGinfo", {
    expect_equal(rngtools:::RNGinfo(), list(kind = "Mersenne-Twister", normal = "Inversion"))
})
