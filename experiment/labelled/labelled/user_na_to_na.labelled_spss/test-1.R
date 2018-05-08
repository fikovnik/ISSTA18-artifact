library(testthat)

.Random.seed <<- .ext.seed

test_that("user_na_to_na.labelled_spss", {
    v <- structure(1:10, labels = structure(c(1, 8), names = c("Good", "Bad")), class = c("labelled_spss", "labelled"), na_values = c(9, 
        10))
    expect_equal(labelled:::user_na_to_na.labelled_spss(x = v), structure(c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, NA, NA), labels = structure(c(1, 
        8), names = c("Good", "Bad")), class = "labelled"))
})
