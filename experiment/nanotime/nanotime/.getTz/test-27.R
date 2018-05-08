library(testthat)

.Random.seed <<- .ext.seed

test_that(".getTz", {
    x <- .ext.1
    tz <- ""
    expect_equal(nanotime:::.getTz(x = x, tz = tz), "UTC")
})
