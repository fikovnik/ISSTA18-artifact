library(testthat)

.Random.seed <<- .ext.seed

test_that("as_rows_function", {
    ..f <- .Primitive("sum")
    expect_equal(purrrlyr:::as_rows_function(f = ..f), .Primitive("sum"))
})
