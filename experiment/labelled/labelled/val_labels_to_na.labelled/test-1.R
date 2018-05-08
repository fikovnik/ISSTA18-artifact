library(testthat)

.Random.seed <<- .ext.seed

test_that("val_labels_to_na.labelled", {
    v <- structure(c(1, 2, 9, 1, 9), labels = structure(9, names = "dk"), class = "labelled")
    expect_equal(labelled:::val_labels_to_na.labelled(x = v), c(1, 2, NA, 1, NA))
})
