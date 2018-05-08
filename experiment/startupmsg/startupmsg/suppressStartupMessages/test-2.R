library(testthat)

.Random.seed <<- .ext.seed

test_that("suppressStartupMessages", {
    msg <- "Note that you may set global options by options() --- cf. ?\"options\"."
    buildStartupMessage <- startupmsg::buildStartupMessage
    expect_equal(startupmsg:::suppressStartupMessages(expr = buildStartupMessage(pkg = "stats", msg)), NULL)
})
