library(testthat)

.Random.seed <<- .ext.seed

test_that("as.Date.nanotime", {
    x <- .ext.1
    expect_equal(nanotime:::as.Date.nanotime(x = x), structure(0, class = "Date"))
})
