library(testthat)

.Random.seed <<- .ext.seed

test_that("strapply", {
    expect_equal(gsubfn:::strapply(X = "12;34:56,89,,12", pattern = "[0-9]+", simplify = c), c("12", "34", "56", "89", "12"))
})
