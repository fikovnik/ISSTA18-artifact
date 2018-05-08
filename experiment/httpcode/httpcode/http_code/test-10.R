library(testthat)

.Random.seed <<- .ext.seed

test_that("http_code", {
    expect_equal(httpcode:::http_code(code = "30[34]"), list(structure(list(status_code = "303", message = "See Other", explanation = "Object moved -- see Method and URL list"), 
        class = "http_code"), structure(list(status_code = "304", message = "Not Modified", explanation = "Document has not changed since given time"), 
        class = "http_code")))
})
