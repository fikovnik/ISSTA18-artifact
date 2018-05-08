library(testthat)

.Random.seed <<- .ext.seed

test_that("as.POSIXct.nanotime", {
    x <- .ext.1
    expect_equal(nanotime:::as.POSIXct.nanotime(x = x + 1000), structure(1.002e-06, tzone = "", class = c("POSIXct", "POSIXt")))
})
