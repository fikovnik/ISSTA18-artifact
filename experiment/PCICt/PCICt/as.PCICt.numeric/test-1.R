library(testthat)

.Random.seed <<- .ext.seed

test_that("as.PCICt.numeric", {
    expect_equal(PCICt:::as.PCICt.numeric(x = 86400, cal = "360", origin = "1961-01-01"), structure(-279849600, cal = "360", 
        months = c(30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30), dpy = 360, tzone = "GMT", units = "secs", class = "PCICt"))
})
