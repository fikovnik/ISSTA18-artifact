library(testthat)

.Random.seed <<- .ext.seed

test_that("binaryRep", {
    expect_equal(SoDA:::binaryRep(data = c(0.1, 0.25, 1/3)), .ext.1)
})
