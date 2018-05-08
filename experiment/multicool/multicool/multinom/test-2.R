library(testthat)

.Random.seed <<- .ext.seed

test_that("multinom", {
    x <- c(3L, 2L, 1L)
    expect_equal(multicool:::multinom(x = x, counts = TRUE), 60)
})
