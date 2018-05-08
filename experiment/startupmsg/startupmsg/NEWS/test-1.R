library(testthat)

.Random.seed <<- .ext.seed

test_that("NEWS", {
    expect_equal(startupmsg:::NEWS(pkg = "stats"), NULL)
})
