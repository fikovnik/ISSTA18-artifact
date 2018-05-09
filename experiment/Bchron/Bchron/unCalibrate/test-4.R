library(testthat)

.Random.seed <<- .ext.seed

test_that("unCalibrate", {
    expect_equal(Bchron:::unCalibrate(calAges = 2350, type = "ages"), 2346)
})
