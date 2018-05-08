library(testthat)

.Random.seed <<- .ext.seed

test_that("is.real.positive", {
    expect_equal(schoolmath:::is.real.positive(x = 0), TRUE)
})
