library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("foo", "foobar", "biz", "f", "b", "z", "0", "0", "0", "logical", "logical", "logical"), .Dim = 3:4)
    expect_equal(getopt:::getopt(spec = spec, opt = c("--foo")), list(ARGS = character(0), foo = TRUE))
})
