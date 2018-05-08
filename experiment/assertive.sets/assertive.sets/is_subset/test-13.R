library(testthat)

.Random.seed <<- .ext.seed

test_that("is_subset", {
    expect_equal(assertive.sets:::is_subset(x = 1:5, y = 1:4), structure(FALSE, cause = structure("The element ‘5’ in 1:5 is not in 1:4.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
