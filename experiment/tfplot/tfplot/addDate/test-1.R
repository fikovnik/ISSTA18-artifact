library(testthat)

.Random.seed <<- .ext.seed

test_that("addDate", {
    expect_equal(tfplot:::addDate(date = c(1998, 1), periods = 20, freq = 12), c(1999, 9))
})
