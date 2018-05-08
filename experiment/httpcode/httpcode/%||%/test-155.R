library(testthat)

.Random.seed <<- .ext.seed

test_that("%||%", {
    y <- NULL
    expect_equal(httpcode:::`%||%`(x = y, y = ""), "")
})
