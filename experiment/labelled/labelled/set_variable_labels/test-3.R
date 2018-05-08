library(testthat)

.Random.seed <<- .ext.seed

test_that("set_variable_labels", {
    df <- structure(list(s1 = c("M", "M", "F"), s2 = c(1, 1, 2)), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(labelled:::set_variable_labels(.data = df, s1 = "Sex", s2 = "Question"), structure(list(s1 = structure(c("M", 
        "M", "F"), label = "Sex"), s2 = structure(c(1, 1, 2), label = "Question")), row.names = c(NA, -3L), class = "data.frame"))
})
