library(testthat)

.Random.seed <<- .ext.seed

test_that("showRNG", {
    expect_equal(rngtools:::showRNG(object = 1234), NULL)
})
