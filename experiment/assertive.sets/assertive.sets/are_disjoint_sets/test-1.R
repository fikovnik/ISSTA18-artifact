library(testthat)

.Random.seed <<- .ext.seed

test_that("are_disjoint_sets", {
    expect_equal(assertive.sets:::are_disjoint_sets(x = 1:4, y = 3:6), structure(FALSE, cause = structure("1:4 and 3:6 have common elements: 3, 4.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
