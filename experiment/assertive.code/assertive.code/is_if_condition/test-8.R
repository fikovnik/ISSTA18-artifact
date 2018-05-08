library(testthat)

.Random.seed <<- .ext.seed

test_that("is_if_condition", {
    expect_equal(assertive.code:::is_if_condition(x = logical()), structure(FALSE, cause = structure("logical() has length 0, not 1.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
