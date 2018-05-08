library(testthat)

.Random.seed <<- .ext.seed

test_that("is.positive", {
    expect_equal(schoolmath:::is.positive(x = 2), TRUE)
})
