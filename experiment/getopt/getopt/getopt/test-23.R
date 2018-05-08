library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("string", "number", "s", "n", "1", "1", "character", "numeric"), .Dim = c(2L, 4L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("--number=")), list(ARGS = character(0), number = NA_real_))
})
