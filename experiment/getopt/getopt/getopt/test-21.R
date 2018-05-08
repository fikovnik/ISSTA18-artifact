library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("count", "c", "1", "double"), .Dim = c(1L, 4L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("--count=-1.2e5")), list(ARGS = character(0), count = -120000))
})
