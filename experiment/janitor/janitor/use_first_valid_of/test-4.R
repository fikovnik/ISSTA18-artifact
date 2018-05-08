library(testthat)

.Random.seed <<- .ext.seed

test_that("use_first_valid_of", {
    c <- c(3, 3, 3)
    b <- c(2, 2, NA)
    a <- c(1, NA, NA)
    expect_equal(janitor:::use_first_valid_of(a, b, c), c(1, 2, 3))
})
