library(testthat)

.Random.seed <<- .ext.seed

test_that("are_intersecting_sets", {
    x <- 1:5
    expect_equal(assertive.sets:::are_intersecting_sets(x = x, y = 6:10), structure(FALSE, cause = structure("x and 6:10 have no common elements.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
