library(testthat)

.Random.seed <<- .ext.seed

test_that("hasRNG", {
    expect_equal(rngtools:::hasRNG(object = 1), FALSE)
})
