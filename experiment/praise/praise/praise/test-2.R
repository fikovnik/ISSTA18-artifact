library(testthat)

.Random.seed <<- .ext.seed

test_that("praise", {
    expect_equal(praise:::praise(), "You are top-notch!")
})
