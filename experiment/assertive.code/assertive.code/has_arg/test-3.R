library(testthat)

.Random.seed <<- .ext.seed

test_that("has_arg", {
    expect_equal(assertive.code:::has_arg(x = y, fn = mean.default), structure(FALSE, cause = structure("‘y’ is not an argument of ‘fn’.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
