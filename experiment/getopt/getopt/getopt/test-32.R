library(testthat)

.Random.seed <<- .ext.seed

test_that("getopt", {
    spec <- c("date", "d", "1", "character", "help", "h", "0", "logical", "getdata", "g", "0", "logical", "market", "m", 
        "1", "character", "threshold", "t", "1", "double")
    expect_equal(getopt:::getopt(spec = spec, opt = c("--date", "20080421", "--market", "YM", "--getdata")), list(ARGS = character(0), 
        date = "20080421", market = "YM", getdata = TRUE))
})
