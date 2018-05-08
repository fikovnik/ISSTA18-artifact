library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGrecovery", {
    expect_equal(rngtools:::RNGrecovery(), c("Marsaglia-Multicarry", "Inversion"))
})
