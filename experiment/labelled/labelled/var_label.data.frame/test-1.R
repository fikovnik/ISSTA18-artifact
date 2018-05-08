library(testthat)

.Random.seed <<- .ext.seed

test_that("var_label.data.frame", {
    df <- structure(list(s1 = structure(c("M", "M", "F"), label = "Sex"), s2 = structure(c(1, 1, 2), label = "Yes or No?")), 
        row.names = c(NA, -3L), class = c("tbl_df", "tbl", "data.frame"))
    expect_equal(labelled:::var_label.data.frame(x = df), list(s1 = "Sex", s2 = "Yes or No?"))
})
