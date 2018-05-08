library(testthat)

.Random.seed <<- .ext.seed

test_that("pairSum", {
    expect_equal(ibdreg:::pairSum(cov1 = 20, cov2 = 30), 50)
})
