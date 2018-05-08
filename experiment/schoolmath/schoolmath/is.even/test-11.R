library(testthat)

.Random.seed <<- .ext.seed

test_that("is.even", {
    x <- c(1, 2, 3, 4, 5, 6, 7)
    expect_equal(schoolmath:::is.even(x = x), c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE))
})
