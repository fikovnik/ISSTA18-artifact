library(testthat)

.Random.seed <<- .ext.seed

test_that("gcd", {
    expect_equal(schoolmath:::gcd(x = 42, y = 56), 14)
})
