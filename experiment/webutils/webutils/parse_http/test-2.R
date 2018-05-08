library(testthat)

.Random.seed <<- .ext.seed

test_that("parse_http", {
    expect_equal(webutils:::parse_http(body = "foo=1%2B1%3D2&bar=yin%26yang", content_type = "application/x-www-form-urlencoded"), 
        list(foo = "1+1=2", bar = "yin&yang"))
})
