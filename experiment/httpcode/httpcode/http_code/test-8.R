library(testthat)

.Random.seed <<- .ext.seed

test_that("http_code", {
    expect_equal(httpcode:::http_code(code = 100), structure(list(status_code = "100", message = "Continue", explanation = "Request received, please continue"), 
        class = "http_code"))
})
