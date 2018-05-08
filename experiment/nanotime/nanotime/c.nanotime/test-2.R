library(testthat)

.Random.seed <<- .ext.seed

test_that("c.nanotime", {
    t2 <- .ext.1
    t1 <- .ext.2
    expect_equal(nanotime:::c.nanotime(t1, t2), .ext.3)
})
