library(testthat)

.Random.seed <<- .ext.seed

test_that("print.http_code", {
    expect_equal(httpcode:::print.http_code(x = structure(list(status_code = "500", message = "Internal Server Error", explanation = "Server got itself in trouble", 
        verbose_explanation = "The server encountered an unexpected condition which prevented it from fulfilling the request."), 
        class = "http_code")), NULL)
})
