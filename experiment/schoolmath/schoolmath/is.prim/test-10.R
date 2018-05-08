library(testthat)

.Random.seed <<- .ext.seed

test_that("is.prim", {
    x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
    expect_equal(schoolmath:::is.prim(y = x), c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE))
})
