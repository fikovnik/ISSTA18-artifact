library(testthat)

.Random.seed <<- .ext.seed

test_that("sort_val_labels.labelled", {
    v <- structure(c(1, 2, 3), labels = structure(c(2, 1, 3), names = c("maybe", "yes", "no")), class = "labelled")
    expect_equal(labelled:::sort_val_labels.labelled(x = v), structure(c(1, 2, 3), labels = structure(c(1, 2, 3), names = c("yes", 
        "maybe", "no")), class = "labelled"))
})
