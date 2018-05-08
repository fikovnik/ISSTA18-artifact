library(testthat)

.Random.seed <<- .ext.seed

test_that("PCICt.get.months", {
    cal.cleaned <- "360"
    expect_equal(PCICt:::PCICt.get.months(cal = cal.cleaned), c(30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30))
})
