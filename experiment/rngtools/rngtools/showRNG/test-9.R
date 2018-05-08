library(testthat)

.Random.seed <<- .ext.seed

test_that("showRNG", {
    nextRNG <- rngtools::nextRNG
    expect_equal(rngtools:::showRNG(object = nextRNG(1234, ndraw = 10)), NULL)
})
