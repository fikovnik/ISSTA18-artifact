library(testthat)

.Random.seed <<- .ext.seed

test_that("nanotime", {
    p <- structure(18000, class = c("POSIXct", "POSIXt"), tzone = "America/New_York")
    expect_equal(nanotime:::nanotime(x = c(a = p, b = p)), .ext.1)
})
