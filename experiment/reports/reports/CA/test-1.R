library(testthat)

.Random.seed <<- .ext.seed

test_that("CA", {
    expect_equal(reports:::CA(text = "the flexible, efficient way to do reports."), "The Flexible, Efficient Way To Do Reports.")
})
