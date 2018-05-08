library(testthat)

.Random.seed <<- .ext.seed

test_that("has_arg", {
    expect_equal(assertive.code:::has_arg(x = z), structure(FALSE, cause = structure("‘z’ is not an argument of ‘fn’.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
