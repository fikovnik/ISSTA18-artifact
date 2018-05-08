library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("count", "c", "1", "integer"), .Dim = c(1L, 4L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("-c", "hello")), list(ARGS = character(0), count = "hello"))
})
