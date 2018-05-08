library(testthat)

.Random.seed <<- .ext.seed

test_that("is_if_condition", {
    expect_equal(assertive.code:::is_if_condition(x = NA), structure(FALSE, cause = structure("NA is NA.", class = "noquote"), 
        class = c("scalar_with_cause", "logical")))
})
