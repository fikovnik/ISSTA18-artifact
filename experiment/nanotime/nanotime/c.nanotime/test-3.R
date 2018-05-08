library(testthat)

.Random.seed <<- .ext.seed

test_that("c.nanotime", {
    qq <- .ext.1
    object <- .ext.2
    `:` <- bit64::`:`
    expect_equal(nanotime:::c.nanotime(qq[1L:3L], mean(object, na.rm = TRUE), qq[4L:5L]), .ext.3)
})
