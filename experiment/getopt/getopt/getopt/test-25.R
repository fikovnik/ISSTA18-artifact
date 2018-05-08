library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("foo", "h", "0", "logical"), .Dim = c(1L, 4L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("-h")), list(ARGS = character(0), foo = TRUE))
})
