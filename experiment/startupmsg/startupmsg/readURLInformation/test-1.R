library(testthat)

.Random.seed <<- .ext.seed

test_that("readURLInformation", {
    expect_equal(startupmsg:::readURLInformation(pkg = "stats"), NULL)
})
