library(testthat)

.Random.seed <<- .ext.seed

test_that("unCalibrate", {
    expect_equal(Bchron:::unCalibrate(calAges = c(2350, 4750, 11440), calCurve = "shcal13", type = "ages"), c(2388, 4224, 
        10065))
})
