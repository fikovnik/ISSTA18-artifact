library(testthat)

.Random.seed <<- .ext.seed

test_that("remove_labels.labelled_spss", {
    x1 <- structure(1:10, labels = structure(c(1, 8), names = c("Good", "Bad")), class = c("labelled_spss", "labelled"), 
        na_values = c(9, 10), label = "A variable")
    expect_equal(labelled:::remove_labels.labelled_spss(x = x1), 1:10)
})
