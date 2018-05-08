library(testthat)

.Random.seed <<- .ext.seed

test_that("get_zillow_web_service_id", {
    expect_equal(ZillowR:::get_zillow_web_service_id(), NULL)
})
