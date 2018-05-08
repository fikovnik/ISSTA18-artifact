library(testthat)

.Random.seed <<- .ext.seed

test_that("mosaic.setGlobalMissingTreshold", {
    expect_equal(MOQA:::mosaic.setGlobalMissingTreshold(value = 99900), 99900)
})
