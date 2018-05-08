library(testthat)

.Random.seed <<- .ext.seed

test_that("mosaic.setGlobalUnit", {
    expect_equal(MOQA:::mosaic.setGlobalUnit(value = "(cm)"), "(cm)")
})
