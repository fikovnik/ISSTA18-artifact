library(testthat)

.Random.seed <<- .ext.seed

test_that("is_three_digit_code", {
    code <- "503"
    expect_equal(httpcode:::is_three_digit_code(x = code), TRUE)
})
