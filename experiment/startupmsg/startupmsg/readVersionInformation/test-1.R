library(testthat)

.Random.seed <<- .ext.seed

test_that("readVersionInformation", {
    expect_equal(startupmsg:::readVersionInformation(pkg = "stats"), list(ver = "3.4.4", title = "The R Stats Package"))
})
