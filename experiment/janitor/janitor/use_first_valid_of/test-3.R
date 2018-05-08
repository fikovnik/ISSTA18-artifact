library(testthat)

.Random.seed <<- .ext.seed

test_that("use_first_valid_of", {
    y <- structure(1:3, .Label = c("c", "d", "e"), class = "factor")
    x <- structure(c(1L, 2L, NA), .Label = c("a", "b"), class = "factor")
    expect_equal(janitor:::use_first_valid_of(x, y), c("a", "b", "e"))
})
