library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime", {
    expect_equal(nanotime:::nanotime(x = Sys.Date()), .ext.1)
})
