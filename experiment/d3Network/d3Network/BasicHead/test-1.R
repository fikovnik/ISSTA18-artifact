library(testthat)

.Random.seed <<- .ext.seed

test_that("BasicHead", {
    expect_equal(d3Network:::BasicHead(), "<!DOCTYPE html>\n<meta charset=\"utf-8\">\n<body> \n")
})
