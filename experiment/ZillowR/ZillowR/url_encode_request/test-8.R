library(testthat)

.Random.seed <<- .ext.seed

test_that("url_encode_request", {
    zws_id <- "ZWSID"
    url <- "http://www.zillow.com/webservice/GetRateSummary.htm"
    state <- NULL
    expect_equal(ZillowR:::url_encode_request(url = url, state = state, `zws-id` = zws_id), "http://www.zillow.com/webservice/GetRateSummary.htm?zws-id=ZWSID")
})
