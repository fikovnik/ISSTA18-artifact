library(testthat)

.Random.seed <<- .ext.seed

test_that("mosaic.setGlobalDescription", {
    expect_equal(MOQA:::mosaic.setGlobalDescription(value = "Height"), "Height")
})
