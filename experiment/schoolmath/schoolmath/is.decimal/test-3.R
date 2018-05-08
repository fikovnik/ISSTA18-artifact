library(testthat)

.Random.seed <<- .ext.seed

test_that("is.decimal", {
    expect_equal(schoolmath:::is.decimal(x = 2.01), TRUE)
})
