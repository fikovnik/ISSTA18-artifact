library(testthat)

.Random.seed <<- .ext.seed

test_that("dpy.for.cal", {
    cal.cleaned <- "360"
    expect_equal(PCICt:::dpy.for.cal(cal = cal.cleaned), 360)
})
