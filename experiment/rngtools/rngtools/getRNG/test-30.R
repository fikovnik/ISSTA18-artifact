library(testthat)

.Random.seed <<- .ext.seed

test_that("getRNG", {
    expect_equal(rngtools:::getRNG(object = 1L), 1L)
})
