library(testthat)

.Random.seed <<- .ext.seed

test_that("classW", {
    expect_equal(packS4:::classW(u1 = 4, u2 = 5, w1 = "E"), .ext.1)
})
