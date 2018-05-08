library(testthat)

.Random.seed <<- .ext.seed

test_that("functionClassicA", {
    myAge <- 35
    expect_equal(packS4:::functionClassicA(age = myAge), 70)
})
