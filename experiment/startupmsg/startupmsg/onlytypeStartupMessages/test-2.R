library(testthat)

.Random.seed <<- .ext.seed

test_that("onlytypeStartupMessages", {
    msg <- "Note that you may set global options by options() --- cf. ?\"options\"."
    buildStartupMessage <- startupmsg::buildStartupMessage
    expect_equal(startupmsg:::onlytypeStartupMessages(expr = buildStartupMessage(pkg = "stats", msg), atypes = "version"), 
        NULL)
})
