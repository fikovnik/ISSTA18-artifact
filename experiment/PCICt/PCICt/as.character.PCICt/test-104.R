library(testthat)

.Random.seed <<- .ext.seed

test_that("as.character.PCICt", {
    date.gregorian <- structure(1330432496.7, tzone = "GMT", cal = "proleptic_gregorian", class = "PCICt", units = "secs")
    expect_equal(PCICt:::as.character.PCICt(x = round(date.gregorian, "days")), "2012-02-29")
})
