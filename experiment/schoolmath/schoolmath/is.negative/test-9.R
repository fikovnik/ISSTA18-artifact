library(testthat)

.Random.seed <<- .ext.seed

test_that("is.negative", {
    x <- c(-1, -2, 3.02, 4, -5.2, 6, -7)
    expect_equal(schoolmath:::is.negative(x = x), c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE))
})
