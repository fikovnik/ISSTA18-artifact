library(testthat)

.Random.seed <<- .ext.seed

test_that("decimal2fraction", {
    expect_equal(schoolmath:::decimal2fraction(decimal = 12.123, period = 4), NULL)
})
