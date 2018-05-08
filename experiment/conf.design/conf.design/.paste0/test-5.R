library(testthat)

.Random.seed <<- .ext.seed

test_that(".paste0", {
    expect_equal(conf.design:::.paste0(c("0", "1", "1", "0", "1", "0", "0", "1")), c("0", "1", "1", "0", "1", "0", "0", "1"))
})
