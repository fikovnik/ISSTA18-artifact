library(testthat)

.Random.seed <<- .ext.seed

test_that("format.nanotime", {
    x <- .ext.1
    expect_equal(nanotime:::format.nanotime(x = x), "1970-01-01T00:00:00.000000012+00:00")
})
