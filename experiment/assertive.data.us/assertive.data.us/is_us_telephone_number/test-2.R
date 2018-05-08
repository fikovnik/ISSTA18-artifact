library(testthat)

.Random.seed <<- .ext.seed

test_that("is_us_telephone_number", {
    x <- c("12345678901", "+12345678901", "0012345678901", "2345678901", "10345678901", "11345678901", "12335678901", "12340678901", 
        "12341678901", "12345118901", "1234567", "12345678", NA)
    expect_equal(assertive.data.us:::is_us_telephone_number(x = x), structure(c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, 
        FALSE, FALSE, FALSE, FALSE, FALSE, NA), names = c("12345678901", "+12345678901", "0012345678901", "2345678901", "10345678901", 
        "11345678901", "12335678901", "12340678901", "12341678901", "12345118901", "1234567", "12345678", NA), cause = structure(c("", 
        "", "", "", "bad format", "bad format", "bad format", "bad format", "bad format", "bad format", "bad country code or length", 
        "bad country code or length", "missing"), class = "noquote"), class = c("vector_with_cause", "logical")))
})
