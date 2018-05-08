library(testthat)

.Random.seed <<- .ext.seed

test_that("buildStartupMessage", {
    msg <- "Note that you may set global options by options() --- cf. ?\"options\"."
    expect_equal(startupmsg:::buildStartupMessage(msg, pkg = "stats"), NULL)
})
