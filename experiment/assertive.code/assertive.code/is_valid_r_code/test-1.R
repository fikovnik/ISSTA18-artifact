library(testthat)

.Random.seed <<- .ext.seed

test_that("is_valid_r_code", {
    expect_equal(assertive.code:::is_valid_r_code(x = "x <- "), structure(FALSE, cause = structure("\"x <- \" is not valid R code. <text>:2:0: unexpected end of input\n1: x <- \n   ^.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
