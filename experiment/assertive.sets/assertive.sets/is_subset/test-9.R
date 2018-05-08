library(testthat)

.Random.seed <<- .ext.seed

test_that("is_subset", {
    expect_equal(assertive.sets:::is_subset(x = 1:5, y = 1:5, strictly = TRUE), structure(FALSE, cause = structure("1:5 and 1:5 are set equal.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
