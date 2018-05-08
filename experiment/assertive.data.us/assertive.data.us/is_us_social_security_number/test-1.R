library(testthat)

.Random.seed <<- .ext.seed

test_that("is_us_social_security_number", {
    ssns <- c("123-45-6789", "666-45-6789", "123-00-6789")
    expect_equal(assertive.data.us:::is_us_social_security_number(x = ssns), structure(c(TRUE, FALSE, FALSE), names = c("123-45-6789", 
        "666-45-6789", "123-00-6789"), cause = structure(c("", "bad format", "bad format"), class = "noquote"), class = c("vector_with_cause", 
        "logical")))
})
