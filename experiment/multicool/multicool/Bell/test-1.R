library(testthat)

.Random.seed <<- .ext.seed

test_that("Bell", {
    expect_equal(multicool:::Bell(n = 6), 203)
})
