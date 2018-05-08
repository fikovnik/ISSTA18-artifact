library(testthat)

.Random.seed <<- .ext.seed

test_that("NVL<-", {
    expect_equal(statnet.common:::`NVL<-`(x = 1, value = 2), 1)
})
