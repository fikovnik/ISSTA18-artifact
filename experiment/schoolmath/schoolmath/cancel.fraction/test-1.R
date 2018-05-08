library(testthat)

.Random.seed <<- .ext.seed

test_that("cancel.fraction", {
    expect_equal(schoolmath:::cancel.fraction(numerator = 42, denominator = 56), NULL)
})
