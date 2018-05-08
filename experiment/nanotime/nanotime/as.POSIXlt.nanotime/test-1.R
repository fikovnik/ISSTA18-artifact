library(testthat)

.Random.seed <<- .ext.seed

test_that("as.POSIXlt.nanotime", {
    b <- .ext.1
    expect_equal(nanotime:::as.POSIXlt.nanotime(x = b), structure(list(sec = 0, min = 0L, hour = 0L, mday = 1L, mon = 0L, 
        year = 70L, wday = 4L, yday = 0L, isdst = 0L, zone = "UTC", gmtoff = 0L), class = c("POSIXlt", "POSIXt"), tzone = c("", 
        "UTC", "UTC")))
})
