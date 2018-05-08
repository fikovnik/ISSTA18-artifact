library(testthat)

.Random.seed <<- .ext.seed

test_that("gcd", {
    y <- 6
    x <- 4
    expect_equal(Peacock.test:::gcd(x = x, y = y), 2L)
})
