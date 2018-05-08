library(testthat)

.Random.seed <<- .ext.seed

test_that("is_valid_variable_name", {
    expect_equal(assertive.code:::is_valid_variable_name(x = "..2", allow_reserved = FALSE), structure(FALSE, names = "..2", 
        cause = structure("reserved", class = "noquote"), class = c("vector_with_cause", "logical")))
})
