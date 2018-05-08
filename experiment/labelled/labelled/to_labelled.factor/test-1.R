library(testthat)

.Random.seed <<- .ext.seed

test_that("to_labelled.factor", {
    f <- structure(c(3L, 3L, 2L, 2L, 1L, 2L, 3L, 1L), .Label = c("don't know", "no", "yes"), class = "factor")
    expect_equal(labelled:::to_labelled.factor(x = f, labels = c(yes = 1, no = 2)), structure(c(1, 1, 2, 2, NA, 2, 1, NA), 
        labels = structure(c(1, 2), names = c("yes", "no")), class = "labelled"))
})
