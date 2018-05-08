library(testthat)

.Random.seed <<- .ext.seed

test_that("as.PCICt.default", {
    expect_equal(PCICt:::as.PCICt.default(x = NA, cal = "360"), structure(NA_real_, cal = "360", months = c(30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30), class = "PCICt", dpy = 360, tzone = "GMT", units = "secs"))
})
