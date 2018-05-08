library(testthat)

.Random.seed <<- .ext.seed

test_that("val_labels.labelled", {
    x <- structure(1:3, labels = structure(1, names = "yes"), class = "labelled")
    expect_equal(labelled:::val_labels.labelled(x = x), structure(1, names = "yes"))
})
