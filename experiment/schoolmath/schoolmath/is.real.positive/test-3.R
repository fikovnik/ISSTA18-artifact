library(testthat)

.Random.seed <<- .ext.seed

test_that("is.real.positive", {
    x <- c(0, -1, -2, 3.02, 4, -5.2, 6, -7)
    expect_equal(schoolmath:::is.real.positive(x = x), c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE))
})
