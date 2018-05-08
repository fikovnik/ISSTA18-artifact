library(testthat)

.Random.seed <<- .ext.seed

test_that("parse_http", {
    expect_equal(webutils:::parse_http(body = "{\"foo\":123, \"bar\":true}", content_type = "application/json"), list(foo = 123L, 
        bar = TRUE))
})
