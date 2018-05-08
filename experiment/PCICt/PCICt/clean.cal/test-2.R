library(testthat)

.Random.seed <<- .ext.seed

test_that("clean.cal", {
    cal <- "365"
    expect_equal(PCICt:::clean.cal(cal = cal), "365")
})
