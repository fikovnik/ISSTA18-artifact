library(testthat)

.Random.seed <<- .ext.seed

test_that("guess_type", {
    expect_equal(mime:::guess_type(file = "Makefile"), "text/plain")
})
