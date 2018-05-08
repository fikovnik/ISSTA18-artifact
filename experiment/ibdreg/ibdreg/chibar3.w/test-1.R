library(testthat)

.Random.seed <<- .ext.seed

test_that("chibar3.w", {
    expect_equal(ibdreg:::chibar3.w(sigma = diag(c(1, 1, 1))), c(0.125, 0.375, 0.375, 0.125))
})
