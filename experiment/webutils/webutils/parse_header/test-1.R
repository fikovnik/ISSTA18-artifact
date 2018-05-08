library(testthat)

.Random.seed <<- .ext.seed

test_that("parse_header", {
    val <- list(as.raw(c(67, 111, 110, 116, 101, 110, 116, 45, 68, 105, 115, 112, 111, 115, 105, 116, 105, 111, 110, 58, 
        32, 102, 111, 114, 109, 45, 100, 97, 116, 97, 59, 32, 110, 97, 109, 101, 61, 34, 102, 111, 111, 34)), as.raw(c(98, 
        108, 97, 98, 108, 97)))
    expect_equal(webutils:::parse_header(buf = val[[1]]), list(content_disposition = "form-data", name = "foo"))
})
