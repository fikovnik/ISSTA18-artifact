library(testthat)

.Random.seed <<- .ext.seed

test_that("getRNG", {
    expect_equal(rngtools:::getRNG(object = list(1L, rng = 1234)), 1234)
})
