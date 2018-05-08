library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("foo", "foobar", "biz", "number", "help", "f", "b", "z", "n", "h", "0", "1", "2", "1", "0", "logical", 
        "character", "logical", "numeric", "logical", "foo usage", "foobar usage", "biz usage", "number usage", "help"), 
        .Dim = c(5L, 5L))
    expect_equal(getopt:::getopt(spec = spec, opt = c("--number=bar")), list(ARGS = character(0), number = "bar"))
})
