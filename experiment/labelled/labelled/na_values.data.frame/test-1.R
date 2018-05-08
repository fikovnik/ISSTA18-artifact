library(testthat)

.Random.seed <<- .ext.seed

test_that("na_values.data.frame", {
    df <- structure(list(s1 = c("M", "M", "F", "F"), s2 = structure(c(1, 1, 2, 9), labels = structure(c(1, 2), names = c("yes", 
        "no")), class = c("labelled_spss", "labelled"), na_values = 9)), row.names = c(NA, -4L), class = c("tbl_df", "tbl", 
        "data.frame"))
    expect_equal(labelled:::na_values.data.frame(x = df), list(s1 = NULL, s2 = 9))
})
