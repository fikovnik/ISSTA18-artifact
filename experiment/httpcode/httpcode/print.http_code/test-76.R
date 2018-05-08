library(testthat)

.Random.seed <<- .ext.seed

test_that("print.http_code", {
    expect_equal(httpcode:::print.http_code(x = structure(list(status_code = "409", message = "Conflict", explanation = "Request conflict."), 
        class = "http_code")), NULL)
})
