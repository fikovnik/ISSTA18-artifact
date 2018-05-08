library(testthat)

.Random.seed <<- .ext.seed

test_that("na_values.labelled_spss", {
    x <- structure(1:10, labels = structure(c(1, 8), names = c("Good", "Bad")), class = c("labelled_spss", "labelled"), na_values = c(9, 
        10))
    expect_equal(labelled:::na_values.labelled_spss(x = x), c(9, 10))
})
