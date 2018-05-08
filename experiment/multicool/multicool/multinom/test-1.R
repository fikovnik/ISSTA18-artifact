library(testthat)

.Random.seed <<- .ext.seed

test_that("multinom", {
    x <- c("a", "a", "a", "b", "b", "c")
    expect_equal(multicool:::multinom(x = x), 60)
})
