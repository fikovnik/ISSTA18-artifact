library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("verbose", "help", "dummy1", "dummy2", "count", "mean", "sd", "output", "v", "h", "d", "e", "c", 
        "m", "s", "O", "2", "0", "0", "2", "1", "1", "1", "1", "integer", "logical", "logical", "logical", "integer", "double", 
        "double", "character"), .Dim = c(8L, 4L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("-m", "3", "-O", "-")), list(ARGS = character(0), mean = 3, output = "-"))
})
