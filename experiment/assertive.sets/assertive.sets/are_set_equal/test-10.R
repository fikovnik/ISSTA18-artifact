library(testthat)

.Random.seed <<- .ext.seed

test_that("are_set_equal", {
    y <- c(99, 3, 5, 4, 2)
    x <- 1:5
    expect_equal(assertive.sets:::are_set_equal(x = x, y = y), structure(FALSE, cause = structure("The element ‘1’ in 1:5 is not in c(99, 3, 5, 4, 2).", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
