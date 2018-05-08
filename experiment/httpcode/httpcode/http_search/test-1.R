library(testthat)

.Random.seed <<- .ext.seed

test_that("http_search", {
    expect_equal(httpcode:::http_search(text = "forbidden"), list(structure(list(status_code = "403", message = "Forbidden", 
        explanation = "Request forbidden -- authorization will not help"), class = "http_code")))
})
