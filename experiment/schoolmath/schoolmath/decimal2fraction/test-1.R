library(testthat)

.Random.seed <<- .ext.seed

test_that("decimal2fraction", {
    expect_equal(schoolmath:::decimal2fraction(decimal = 23.4323), NULL)
})
