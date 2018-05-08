library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime", {
    expect_equal(nanotime:::nanotime(x = Sys.time()), .ext.1)
})
