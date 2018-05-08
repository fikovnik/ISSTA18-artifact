library(testthat)

.Random.seed <<- .ext.seed

test_that("seq.PCICt", {
    as.PCICt <- PCICt::as.PCICt
    expect_equal(PCICt:::seq.PCICt(from = as.PCICt("2012-02-28", cal = "gregorian"), to = as.PCICt("2012-03-03 00:10:00", 
        cal = "gregorian"), by = "days"), structure(c(1330387200, 1330473600, 1330560000, 1330646400, 1330732800), cal = "proleptic_gregorian", 
        class = "PCICt", tzone = "GMT", units = "secs"))
})
