library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime", {
    expect_equal(nanotime:::nanotime(x = "1970-01-01T00:00:00.000000001+00:00"), .ext.1)
})
