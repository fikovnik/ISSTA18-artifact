library(testthat)

.Random.seed <<- .ext.seed

test_that("set_value_labels", {
    df <- structure(list(s1 = c("M", "M", "F"), s2 = c(1, 1, 2)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(labelled:::set_value_labels(.data = df, s1 = c(Male = "M", Female = "F"), s2 = c(Yes = 1, No = 2)), structure(list(s1 = structure(c("M", 
        "M", "F"), labels = structure(c("M", "F"), names = c("Male", "Female")), class = "labelled"), s2 = structure(c(1, 
        1, 2), labels = structure(c(1, 2), names = c("Yes", "No")), class = "labelled")), row.names = c(NA, -3L), class = "data.frame"))
})
