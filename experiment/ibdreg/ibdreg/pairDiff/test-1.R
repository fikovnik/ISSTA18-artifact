library(testthat)

.Random.seed <<- .ext.seed

test_that("pairDiff", {
    expect_equal(ibdreg:::pairDiff(cov1 = 20, cov2 = 30), 10)
})
