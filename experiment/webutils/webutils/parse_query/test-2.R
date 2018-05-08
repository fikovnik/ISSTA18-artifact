library(testthat)

.Random.seed <<- .ext.seed

test_that("parse_query", {
    q <- "foo=1%2B1%3D2&bar=yin%26yang"
    expect_equal(webutils:::parse_query(query = q), list(foo = "1+1=2", bar = "yin&yang"))
})
