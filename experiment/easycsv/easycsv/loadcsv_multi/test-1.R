library(testthat)

.Random.seed <<- .ext.seed

test_that("loadcsv_multi", {
    directory <- "/tmp/RtmpY582PA/genthat-gen_from_package5a0770b9e71f/examples"
    expect_equal(easycsv:::loadcsv_multi(directory = directory, extension = "BOTH"), NULL)
})
