library(testthat)

.Random.seed <<- .ext.seed

test_that("set_zillow_web_service_id", {
    expect_equal(ZillowR:::set_zillow_web_service_id(x = "ZWSID"), NULL)
})
