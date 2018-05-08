library(testthat)

.Random.seed <<- .ext.seed

test_that("is.negative", {
    expect_equal(schoolmath:::is.negative(x = -2), TRUE)
})
