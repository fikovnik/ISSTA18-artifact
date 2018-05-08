library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec2 <- structure(c("date", "help", "getdata", "market", "threshold", "d", "h", "g", "m", "t", "1", "0", "0", "1", "1", 
        "character", "logical", "logical", "character", "double"), .Dim = c(5L, 4L))
    expect_equal(getopt:::getopt(spec = spec2, opt = c("--date", "20080421", "--getdata", "--market", "YM"), usage = TRUE), 
        "Usage: NA [-[-date|d] <character>] [-[-help|h]] [-[-getdata|g]] [-[-market|m] <character>] [-[-threshold|t] <double>]\n")
})
