library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_percentages", {
    . <- structure(list(Operation = c("Login", "Posted", "Deleted", "Total"), `Total Count` = c(5, 25, 40, 70)), row.names = c(NA, 
        4L), core = structure(list(Operation = structure(c(2L, 3L, 1L), .Label = c("Deleted", "Login", "Posted"), class = "factor"), 
        `Total Count` = c(5, 25, 40)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", totals = "row", 
        class = c("tabyl", "data.frame"))
    expect_equal(janitor:::adorn_percentages(dat = ., denominator = "col"), structure(list(Operation = c("Login", "Posted", 
        "Deleted", "Total"), `Total Count` = c(0.0714285714285714, 0.357142857142857, 0.571428571428571, 1)), row.names = c(NA, 
        4L), core = structure(list(Operation = structure(c(2L, 3L, 1L), .Label = c("Deleted", "Login", "Posted"), class = "factor"), 
        `Total Count` = c(5, 25, 40)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "two_way", totals = "row", 
        class = c("tabyl", "data.frame")))
})
