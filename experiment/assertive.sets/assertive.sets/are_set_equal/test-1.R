library(testthat)

.Random.seed <<- .ext.seed

test_that("are_set_equal", {
    expect_equal(assertive.sets:::are_set_equal(x = 1:5, y = 1:6), structure(FALSE, cause = structure("1:5 and 1:6 have different numbers of elements (5 versus 6).", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
