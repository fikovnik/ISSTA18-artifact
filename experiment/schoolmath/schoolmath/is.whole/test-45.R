library(testthat)

.Random.seed <<- .ext.seed

test_that("is.whole", {
    x <- c(1, 2, 3, 4, 5.5, 6.03, 23.07)
    expect_equal(schoolmath:::is.whole(x = x), c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE))
})
