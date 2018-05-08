library(testthat)

.Random.seed <<- .ext.seed

test_that("strapplyc", {
    text <- c("this is the first field 1 2", "more text 3 4", "")
    pattern <- "^(.*) +(\\S+) +(\\S+)$"
    expect_equal(gsubfn:::strapplyc(X = text, pattern = pattern), list(c("this is the first field", "1", "2"), c("more text", 
        "3", "4"), NULL))
})
