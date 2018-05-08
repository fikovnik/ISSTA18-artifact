library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime", {
    expect_equal(nanotime:::nanotime(x = as.POSIXlt(Sys.time())), .ext.1)
})
