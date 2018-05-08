library(testthat)

.Random.seed <<- .ext.seed

test_that("PCICt.get.months", {
    cal.cleaned <- "proleptic_gregorian"
    expect_equal(PCICt:::PCICt.get.months(cal = cal.cleaned), NULL)
})
