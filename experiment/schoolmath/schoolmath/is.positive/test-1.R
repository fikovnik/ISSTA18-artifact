library(testthat)

.Random.seed <<- .ext.seed

test_that("is.positive", {
    x <- c(-1, -2, 3.02, 4, -5.2, 6, -7)
    expect_equal(schoolmath:::is.positive(x = x), c(FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE))
})
