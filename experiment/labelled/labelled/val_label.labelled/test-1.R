library(testthat)

.Random.seed <<- .ext.seed

test_that("val_label.labelled", {
    v <- structure(c(1, 2, 2, 2, 3, 9, 1, 3, 2, NA), labels = structure(c(1, 3, 9), names = c("yes", "no", "don't know")), 
        class = "labelled")
    expect_equal(labelled:::val_label.labelled(x = v, v = 2), NULL)
})
