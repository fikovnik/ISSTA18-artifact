library(testthat)

.Random.seed <<- .ext.seed

test_that("set_value_labels", {
    . <- structure(list(s1 = c("M", "M", "F", "F"), s2 = c(1, 1, 2, 9)), row.names = c(NA, -4L), class = c("tbl_df", "tbl", 
        "data.frame"))
    expect_equal(labelled:::set_value_labels(.data = ., s2 = c(yes = 1, no = 2)), structure(list(s1 = c("M", "M", "F", "F"), 
        s2 = structure(c(1, 1, 2, 9), labels = structure(c(1, 2), names = c("yes", "no")), class = "labelled")), row.names = c(NA, 
        -4L), class = c("tbl_df", "tbl", "data.frame")))
})
