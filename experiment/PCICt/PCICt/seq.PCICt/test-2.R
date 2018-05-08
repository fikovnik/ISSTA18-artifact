library(testthat)

.Random.seed <<- .ext.seed

test_that("seq.PCICt", {
    as.PCICt <- PCICt::as.PCICt
    expect_equal(PCICt:::seq.PCICt(from = as.PCICt("2011-02-28", cal = "gregorian"), to = as.PCICt("2012-04-01 00:10:00", 
        cal = "gregorian"), by = "years"), structure(c(1298851200, 1330387200), cal = "proleptic_gregorian", class = "PCICt", 
        tzone = "GMT", units = "secs"))
})
