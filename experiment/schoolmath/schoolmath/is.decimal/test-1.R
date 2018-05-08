library(testthat)

.Random.seed <<- .ext.seed

test_that("is.decimal", {
    x <- c(1, 2, 3, 4, 5.5, 6.03, 23.07)
    expect_equal(schoolmath:::is.decimal(x = x), c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE))
})
