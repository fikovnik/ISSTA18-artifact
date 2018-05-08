library(testthat)

.Random.seed <<- .ext.seed

test_that("is.odd", {
    x <- c(1, 2, 3, 4, 5, 6, 7)
    expect_equal(schoolmath:::is.odd(x = x), c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE))
})
