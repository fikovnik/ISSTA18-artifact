library(testthat)

.Random.seed <<- .ext.seed

test_that("remove_value_labels", {
    df <- structure(list(s1 = structure(c("M", "M", "F"), labels = structure(c("M", "F"), names = c("Male", "Female")), class = "labelled"), 
        s2 = structure(c(1, 1, 2), labels = structure(c(1, 2, 9), names = c("Yes", "No", "Unknown")), class = "labelled")), 
        row.names = c(NA, -3L), class = "data.frame")
    expect_equal(labelled:::remove_value_labels(.data = df, s2 = 9), structure(list(s1 = structure(c("M", "M", "F"), labels = structure(c("M", 
        "F"), names = c("Male", "Female")), class = "labelled"), s2 = structure(c(1, 1, 2), labels = structure(c(1, 2), names = c("Yes", 
        "No")), class = "labelled")), row.names = c(NA, -3L), class = "data.frame"))
})
