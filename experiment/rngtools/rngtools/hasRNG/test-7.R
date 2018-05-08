library(testthat)

.Random.seed <<- .ext.seed

test_that("hasRNG", {
    expect_equal(rngtools:::hasRNG(object = list(1, 2, 3)), FALSE)
})
