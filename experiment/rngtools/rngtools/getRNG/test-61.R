library(testthat)

.Random.seed <<- .ext.seed

test_that("getRNG", {
    object <- "Mar"
    expect_equal(rngtools:::getRNG(object = object), NULL)
})
