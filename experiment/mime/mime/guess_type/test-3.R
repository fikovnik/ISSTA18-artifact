library(testthat)

.Random.seed <<- .ext.seed

test_that("guess_type", {
    expect_equal(mime:::guess_type(file = c("abc.html", "def.htm"), subtype = c("charset=UTF-8", "")), c("text/html; charset=UTF-8", 
        "text/html"))
})
