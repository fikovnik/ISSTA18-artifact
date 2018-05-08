library(testthat)

.Random.seed <<- .ext.seed

test_that("-.PCICt", {
    as.PCICt <- PCICt::as.PCICt
    expect_equal(PCICt:::`-.PCICt`(e1 = as.PCICt("2012-03-01", cal = "gregorian"), e2 = as.PCICt("2012-02-29", cal = "gregorian")), 
        structure(86400, tzone = "GMT", cal = "proleptic_gregorian", units = "secs", class = "difftime"))
})
