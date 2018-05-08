library(testthat)

.Random.seed <<- .ext.seed

test_that("is_if_condition", {
    expect_equal(assertive.code:::is_if_condition(x = 1), structure(FALSE, cause = structure("1 is not of class 'logical'; it has class 'numeric'.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
