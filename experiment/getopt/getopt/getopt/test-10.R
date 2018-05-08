library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- structure(c("foo", "foobar", "biz", "number", "help", "f", "b", "z", "n", "h", "0", "1", "2", "1", "0", "logical", 
        "character", "logical", "numeric", "logical", "foo usage", "foobar usage", "biz usage", "number usage", "help"), 
        .Dim = c(5L, 5L))
    expect_equal(getopt:::getopt(spec = spec, usage = TRUE), "Usage: NA [-[-foo|f]] [-[-foobar|b] <character>] [-[-biz|z] [<logical>]] [-[-number|n] <double>] [-[-help|h]]\n    -f|--foo       foo usage\n    -b|--foobar    foobar usage\n    -z|--biz       biz usage\n    -n|--number    number usage\n    -h|--help      help\n")
})
